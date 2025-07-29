#' `pass()` or `fail()` a test
#'
#' @description
#' These are the primitives that you can use to implement your own expectations.
#' Every branch of code inside an expectation must call either `pass()` or
#' `fail()`; learn more in `vignette("custom-expectation")`.
#'
#' @param message a string to display.
#' @param info Character vector continuing additional information. Included
#'   for backward compatibility only and new expectations should not use it.
#' @param srcref Location of the failure. Should only needed to be explicitly
#'   supplied when you need to forward a srcref captured elsewhere.
#' @param trace An optional backtrace created by [rlang::trace_back()].
#'   When supplied, the expectation is displayed with the backtrace.
#' @param trace_env If `is.null(trace)`, this is used to automatically
#'   generate a traceback running from `test_code()`/`test_file()` to
#'   `trace_env`. You'll generally only need to set this if you're wrapping
#'   an expectation inside another function.
#' @export
#' @examples
#' \dontrun{
#' test_that("this test fails", fail())
#' test_that("this test succeeds", succeed())
#' }
fail <- function(
  message = "Failure has been forced",
  info = NULL,
  srcref = NULL,
  trace_env = caller_env(),
  trace = NULL
) {
  if (is.null(trace)) {
    trace <- trace_back(top = getOption("testthat_topenv"), bottom = trace_env)
  }
  # Only show if there's at least one function apart from the expectation
  if (trace_length(trace) <= 1) {
    trace <- NULL
  }

  message <- paste(c(message, info), collapse = "\n")
  expectation("failure", message, srcref = srcref, trace = trace)
}

#' @rdname fail
#' @param value Value to return, typically the result of evaluating the
#'   `object` argument to the expectation.
#' @export
pass <- function(value) {
  expectation("success", "success")
  invisible(value)
}

#' Mark a test as successful
#'
#' This is an older version of [pass()] that exists for backwards compatibility.
#' You should now use `pass()` instead`
#'
#' @export
#' @inheritParams fail
#' @keywords internal
succeed <- function(message = "Success has been forced", info = NULL) {
  message <- paste(c(message, info), collapse = "\n")

  expectation("success", message)
}
