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
#' @param code test code containing expectations
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
  code <- substitute(code)
  test_code(desc, code, env = parent.frame())
}

test_code <- function(test, code, env = test_env(), skip_on_empty = TRUE) {
  if (!is.null(test)) {
    get_reporter()$start_test(context = get_reporter()$.context, test = test)
    on.exit(get_reporter()$end_test(context = get_reporter()$.context, test = test))
  }

  ok <- TRUE
  register_expectation <- function(e) {
    calls <- e$expectation_calls
    srcref <- find_first_srcref(calls)

    e <- as.expectation(e, srcref = srcref)
    e$call <- calls
    e$start_frame <- attr(calls, "start_frame")
    e$end_frame <- e$start_frame + length(calls) - 1L
    e$test <- test %||% "(unknown)"
    ok <<- ok && expectation_ok(e)
    get_reporter()$add_result(context = get_reporter()$.context, test = test, result = e)
  }

  frame <- sys.nframe()
  frame_calls <- function(start_offset, end_offset, start_frame = frame) {
    sys_calls <- sys.calls()
    start_frame <- start_frame + start_offset
    structure(
      sys_calls[(start_frame):(length(sys_calls) - end_offset - 1)],
      start_frame = start_frame
    )
  }

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

    # Capture call stack, removing last calls from end (added by
    # withCallingHandlers), and first calls from start (added by
    # tryCatch etc).
    e$expectation_calls <- frame_calls(11, 2)

    test_error <<- e

    # Error will be handled by handle_fatal() if this fails; need to do it here
    # to be able to debug with the DebugReporter
    register_expectation(e)

    e$handled <- TRUE
    test_error <<- e
  }
  handle_fatal <- function(e) {
    handled <<- TRUE
    # Error caught in handle_error() has precedence
    if (!is.null(test_error)) {
      e <- test_error
      if (isTRUE(e$handled)) {
        return()
      }
    }

    if (is.null(e$expectation_calls)) {
      e$expectation_calls <- frame_calls(0, 0)
    }

    register_expectation(e)
  }
  handle_expectation <- function(e) {
    handled <<- TRUE
    e$expectation_calls <- frame_calls(11, 6)
    register_expectation(e)
    invokeRestart("continue_test")
  }
  handle_warning <- function(e) {
    handled <<- TRUE
    e$expectation_calls <- frame_calls(11, 5)
    register_expectation(e)
    invokeRestart("muffleWarning")
  }
  handle_message <- function(e) {
    handled <<- TRUE
    invokeRestart("muffleMessage")
  }
  handle_skip <- function(e) {
    handled <<- TRUE

    if (inherits(e, "skip_empty")) {
      # Need to generate call as if from test_that
      e$expectation_calls <- frame_calls(0, 12, frame - 1)
    } else {
      e$expectation_calls <- frame_calls(11, 2)
    }

    register_expectation(e)
    signalCondition(e)
  }

  test_env <- new.env(parent = env)
  tryCatch(
    withCallingHandlers({
      eval(code, test_env)
      if (!handled && !is.null(test))
        skip_empty()
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
    skip =  function(e) {}
  )


  invisible(ok)
}

#' R package to make testing fun!
#'
#' Try the example below. Have a look at the references and learn more
#' from function documentation such as [expect_that()].
#'
#' @details Software testing is important, but, in part because
#' it is frustrating and boring, many of us avoid it.
#'
#' testthat is a new testing framework for R that is easy learn and use,
#' and integrates with your existing workflow.
#'
#' @section Options:
#' - `testthat.use_colours`: Should the output be coloured? (Default:
#' `TRUE`).
#'
#' - `testthat.summary.max_reports`: The maximum number of detailed test
#' reports printed for the summary reporter (default: 15).
#'
#' - `testthat.summary.omit_dots`: Omit progress dots in the summary reporter
#' (default: `FALSE`).
#'
#' @docType package
#' @name testthat
#' @references Wickham, H (2011). testthat: Get Started with Testing.
#' \strong{The R Journal} \emph{3/1} 5-10.
#' \url{http://journal.r-project.org/archive/2011-1/RJournal_2011-1_Wickham.pdf}
#'
#' \url{https://github.com/hadley/testthat}
#'
#' \url{http://adv-r.had.co.nz/Testing.html}
#'
#' @examples
#' library(testthat)
#' a <- 9
#' expect_that(a, is_less_than(10))
#' expect_less_than(a, 10)
#'
#' @useDynLib testthat, .registration = TRUE
NULL
