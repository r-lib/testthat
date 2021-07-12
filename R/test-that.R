#' Create a test.
#'
#' A test encapsulates a series of expectations about small, self-contained
#' set of functionality. Each test is contained in a \link{context} and
#' contains multiple expectations.
#'
#' Tests are evaluated in their own environments, and should not affect
#' global state.
#'
#' When run from the command line, tests return `NULL` if all
#' expectations are met, otherwise it raises an error.
#'
#' @param desc test name.  Names should be kept as brief as possible, as they
#'   are often used as line prefixes.
#' @param code test code containing expectations.  Braces (`{}`) should always be
#'   used in order to get accurate location data for test failures.
#' @export
#' @examples
#' test_that("trigonometric functions match identities", {
#'   expect_equal(sin(pi / 4), 1 / sqrt(2))
#'   expect_equal(cos(pi / 4), 1 / sqrt(2))
#'   expect_equal(tan(pi / 4), 1)
#' })
#' # Failing test:
#' \dontrun{
#' test_that("trigonometric functions match identities", {
#'   expect_equal(sin(pi / 4), 1)
#' })
#' }
test_that <- function(desc, code) {
  if (!is.character(desc) || length(desc) != 1) {
    abort("`desc` must be a string")
  }

  reporter <- get_reporter()
  if (is.null(reporter)) {
    reporter <- local_interactive_reporter()
  }

  local_test_context()

  code <- substitute(code)

  if (edition_get() >= 3) {
    if (!is_call(code, "{")) {
      warn("The `code` argument to `test_that()` must be a braced expression to get accurate file-line information for failures.")
    }
  }

  test_code(desc, code, env = parent.frame(), reporter = reporter)
}

# Access error fields with `[[` rather than `$` because the
# `$.Throwable` from the rJava package throws with unknown fields
test_code <- function(test, code, env = test_env(), reporter = get_reporter(), skip_on_empty = TRUE) {
  reporter <- reporter %||% StopReporter$new()
  if (!is.null(test) && !is.null(reporter)) {
    reporter$start_test(context = reporter$.context, test = test)
    on.exit(reporter$end_test(context = reporter$.context, test = test))
  }

  ok <- TRUE

  # @param debug_end How many frames should be skipped to find the
  #   last relevant frame call. Only useful for the DebugReporter.
  register_expectation <- function(e, debug_end) {
    # Find test environment on the stack
    start <- eval_bare(quote(base::sys.nframe()), test_env) + 1L

    srcref <- e[["srcref"]] %||% find_first_srcref(start)
    e <- as.expectation(e, srcref = srcref)

    # Data for the DebugReporter
    if (debug_end >= 0) {
      e$start_frame <- start
      e$end_frame <- sys.nframe() - debug_end - 1L
    }

    e$test <- test %||% "(code run outside of `test_that()`)"

    ok <<- ok && expectation_ok(e)
    reporter$add_result(context = reporter$.context, test = test, result = e)
  }

  frame <- sys.nframe()
  # Any error will be assigned to this variable first
  # In case of stack overflow, no further processing (not even a call to
  # signalCondition() ) might be possible
  test_error <- NULL

  expressions_opt <- getOption("expressions")
  expressions_opt_new <- min(expressions_opt + 500L, 500000L)

  # If no handlers are called we skip: BDD (`describe()`) tests are often
  # nested and the top level might not contain any expectations, so we need
  # some way to disable
  handled <- !skip_on_empty

  handle_error <- function(e) {
    handled <<- TRUE
    # First thing: Collect test error
    test_error <<- e

    # Increase option(expressions) to handle errors here if possible, even in
    # case of a stack overflow.  This is important for the DebugReporter.
    # Call options() manually, avoid withr overhead.
    options(expressions = expressions_opt_new)
    on.exit(options(expressions = expressions_opt), add = TRUE)

    # Add structured backtrace to the expectation
    if (can_entrace(e)) {
      e <- cnd_entrace(e)
    }

    test_error <<- e

    # Error will be handled by handle_fatal() if this fails; need to do it here
    # to be able to debug with the DebugReporter
    register_expectation(e, 2)

    e[["handled"]] <- TRUE
    test_error <<- e
  }
  handle_fatal <- function(e) {
    handled <<- TRUE
    # Error caught in handle_error() has precedence
    if (!is.null(test_error)) {
      e <- test_error
      if (isTRUE(e[["handled"]])) {
        return()
      }
    }

    register_expectation(e, 0)
  }
  handle_expectation <- function(e) {
    handled <<- TRUE
    register_expectation(e, 6)
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

    maybe_restart("muffleWarning")
  }
  handle_message <- function(e) {
    if (edition_get() < 3) {
     maybe_restart("muffleMessage")
    }
  }
  handle_skip <- function(e) {
    handled <<- TRUE

    if (inherits(e, "skip_empty")) {
      # If we get here, `code` has already finished its evaluation.
      # Find the srcref in the `test_that()` frame above.
      e$srcref <- find_first_srcref(frame - 1)
      debug_end <- -1
    } else {
      debug_end <- 2
    }

    register_expectation(e, debug_end)
    signalCondition(e)
  }

  test_env <- new.env(parent = env)
  old <- options(rlang_trace_top_env = test_env)[[1]]
  on.exit(options(rlang_trace_top_env = old), add = TRUE)

  withr::local_options(testthat_topenv = test_env)

  tryCatch(
    withCallingHandlers(
      {
        eval(code, test_env)
        if (!handled && !is.null(test)) {
          skip_empty()
        }
      },
      expectation = handle_expectation,
      skip =        handle_skip,
      warning =     handle_warning,
      message =     handle_message,
      error =       handle_error
    ),
    # some errors may need handling here, e.g., stack overflow
    error = handle_fatal,
    # skip silently terminate code
    skip  = function(e) {}
  )


  invisible(ok)
}
