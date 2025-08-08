#' Run a test
#'
#' @description
#' A test encapsulates a series of expectations about a small, self-contained
#' unit of functionality. Each test contains one or more expectations, such as
#' [expect_equal()] or [expect_error()], and lives in a `test/testhat/test*`
#' file, often together with other tests that relate to the same function or set
#' of functions.
#'
#' Each test has its own execution environment, so an object created in a test
#' also dies with the test. Note that this cleanup does not happen automatically
#' for other aspects of global state, such as session options or filesystem
#' changes. Avoid changing global state, when possible, and reverse any changes
#' that you do make.
#'
#' @param desc Test name. Names should be brief, but evocative. It's common to
#'   write the description so that it reads like a natural sentence, e.g.
#'   `test_that("multiplication works", { ... })`.
#' @param code Test code containing expectations. Braces (`{}`) should always
#'   be used in order to get accurate location data for test failures.
#' @return When run interactively, returns `invisible(TRUE)` if all tests
#'   pass, otherwise throws an error.
#' @export
#' @examples
#' test_that("trigonometric functions match identities", {
#'   expect_equal(sin(pi / 4), 1 / sqrt(2))
#'   expect_equal(cos(pi / 4), 1 / sqrt(2))
#'   expect_equal(tan(pi / 4), 1)
#' })
#'
#' \dontrun{
#' test_that("trigonometric functions match identities", {
#'   expect_equal(sin(pi / 4), 1)
#' })
#' }
test_that <- function(desc, code) {
  local_description_push(desc)

  code <- substitute(code)
  if (edition_get() >= 3) {
    if (!is_call(code, "{")) {
      cli::cli_warn(
        "The {.arg code} argument to {.fn test_that} must be a braced expression to get accurate file-line information for failures.",
        class = "testthat_braces_warning"
      )
    }
  }

  test_code(code, parent.frame())
}

# Access error fields with `[[` rather than `$` because the
# `$.Throwable` from the rJava package throws with unknown fields
test_code <- function(code, env, reporter = NULL, skip_on_empty = TRUE) {
  # Must initialise interactive reporter before local_test_context()
  reporter <- get_reporter() %||% local_interactive_reporter()
  local_test_context()

  frame <- caller_env()

  test <- test_description()
  if (!is.null(test)) {
    reporter$start_test(context = reporter$.context, test = test)
    withr::defer(reporter$end_test(context = reporter$.context, test = test))
  }

  # Want to skip if the test (and its subtests) have no expectations
  # if (the$top_level_test) {
  #   the$test_expectations <- 0
  #   the$top_level_test <- FALSE
  #   withr::defer(the$top_level_test <- TRUE)
  # }
  starting_expectations <- the$test_expectations

  ok <- TRUE

  # @param debug_end How many frames should be skipped to find the
  #   last relevant frame call. Only useful for the DebugReporter.
  register_expectation <- function(e, debug_end) {
    srcref <- e[["srcref"]] %||% find_expectation_srcref(frame)
    e <- as.expectation(e, srcref = srcref)

    # Data for the DebugReporter
    if (debug_end >= 0) {
      start <- eval_bare(quote(base::sys.nframe()), test_env) + 1L
      e$start_frame <- start
      e$end_frame <- sys.nframe() - debug_end - 1L
    }

    e$test <- test %||% "(code run outside of `test_that()`)"

    ok <<- ok && expectation_ok(e)
    reporter$add_result(context = reporter$.context, test = test, result = e)
  }

  expressions_opt <- getOption("expressions")
  expressions_opt_new <- min(expressions_opt + 500L, 500000L)

  handle_error <- function(e) {
    the$test_expectations <- the$test_expectations + 1L

    # Increase option(expressions) to handle errors here if possible, even in
    # case of a stack overflow. This is important for the DebugReporter.
    local_options(expressions = expressions_opt_new)

    # Add structured backtrace to the expectation
    if (can_entrace(e)) {
      e <- cnd_entrace(e)
    }

    register_expectation(e, 2)
    invokeRestart("end_test")
  }
  handle_fatal <- function(e) {
    the$test_expectations <- the$test_expectations + 1L
    register_expectation(e, 0)
  }
  handle_expectation <- function(e) {
    the$test_expectations <- the$test_expectations + 1L
    register_expectation(e, 7)
    # Don't bubble up to any other handlers
    invokeRestart("continue_test")
  }
  handle_warning <- function(e) {
    # When options(warn) < 0, warnings are expected to be ignored.
    if (getOption("warn") < 0) {
      return()
    }

    # When options(warn) >= 2, warnings are converted to errors.
    # So, do not handle it here so that it will be handled by handle_error.
    if (getOption("warn") >= 2) {
      return()
    }

    if (!inherits(e, "testthat_warn")) {
      e <- cnd_entrace(e)
    }

    register_expectation(e, 5)
    tryInvokeRestart("muffleWarning")
  }
  handle_message <- function(e) {
    if (edition_get() < 3) {
      tryInvokeRestart("muffleMessage")
    }
  }
  handle_skip <- function(e) {
    the$test_expectations <- the$test_expectations + 1L

    debug_end <- if (inherits(e, "skip_empty")) -1 else 2
    register_expectation(e, debug_end)
    invokeRestart("end_test")
  }
  handle_interrupt <- function(e) {
    if (!is.null(test)) {
      cat("\n")
      cli::cli_inform(c("!" = "Interrupting test: {test}"))
    }
  }

  test_env <- new.env(parent = env)
  old <- options(rlang_trace_top_env = test_env)[[1]]
  withr::defer(options(rlang_trace_top_env = old))

  withr::local_options(testthat_topenv = test_env)

  before <- inspect_state()
  withRestarts(
    tryCatch(
      withCallingHandlers(
        {
          eval(code, test_env)
          has_expectations <- the$test_expectations > starting_expectations
          if (!has_expectations && skip_on_empty) {
            skip_empty()
          }
        },
        expectation = handle_expectation,
        packageNotFoundError = function(e) {
          if (on_cran()) {
            skip(paste0("{", e$package, "} is not installed."))
          }
        },
        skip = handle_skip,
        warning = handle_warning,
        message = handle_message,
        error = handle_error,
        interrupt = handle_interrupt
      ),
      # some errors may need handling here, e.g., stack overflow
      error = handle_fatal
    ),
    end_test = function() {}
  )
  after <- inspect_state()

  if (!is.null(test)) {
    cnd <- testthat_state_condition(before, after, call = sys.call(-1))
    if (!is.null(cnd)) {
      register_expectation(cnd, 0)
    }
  }

  invisible(ok)
}


# Maintain a stack of descriptions
local_description_push <- function(description, frame = caller_env()) {
  check_string(description, call = frame)
  local_description_set(c(the$description, description), frame = frame)
}
local_description_set <- function(
  description = character(),
  frame = caller_env()
) {
  check_character(description, call = frame)

  old <- the$description
  the$description <- description
  withr::defer(the$description <- old, frame)

  invisible(old)
}

test_description <- function() {
  if (length(the$description) == 0) {
    NULL
  } else {
    paste(the$description, collapse = " / ")
  }
}
