#' Expect that a condition holds.
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' An old style of testing that's no longer encouraged.
#'
#' @section 3rd edition:
#' `r lifecycle::badge("deprecated")`
#'
#' This style of testing is formally deprecated as of the 3rd edition.
#' Use a more specific `expect_` function instead.
#'
#' @param object Object to test.
#'
#'   Supports limited unquoting to make it easier to generate readable failures
#'   within a function or for loop. See [quasi_label] for more details.
#' @param condition, a function that returns whether or not the condition
#'   is met, and if not, an error message to display.
#' @param label Used to customise failure messages. For expert use only.
#' @param info Extra information to be included in the message. This argument
#'   is soft-deprecated and should not be used in new code. Instead see
#'   alternatives in [quasi_label].
#' @return the (internal) expectation result as an invisible list
#' @keywords internal
#' @export
#' @seealso [fail()] for an expectation that always fails.
#' @examples
#' expect_that(5 * 2, equals(10))
#' expect_that(sqrt(2) ^ 2, equals(2))
#' \dontrun{
#' expect_that(sqrt(2) ^ 2, is_identical_to(2))
#' }
expect_that <- function(object, condition, info = NULL, label = NULL) {
  edition_deprecate(3, "expect_that()")
  condition(object)
}

#' `pass()` or `fail()` a test
#'
#' @description
#' These are the primitives that you can use to implement your own expectations.
#' Every branch of code inside an expectation must call either `pass()` or
#' `fail()`; learn more in `vignette("custom-expectation")`.
#'
#' @param message a string to display.
#' @inheritParams expect
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
