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

#' Default expectations that always succeed or fail.
#'
#' These allow you to manually trigger success or failure. Failure is
#' particularly useful to a pre-condition or mark a test as not yet
#' implemented.
#'
#' @param message a string to display.
#' @inheritParams expect
#' @export
#' @examples
#' \dontrun{
#' test_that("this test fails", fail())
#' test_that("this test succeeds", succeed())
#' }
fail <- function(message = "Failure has been forced", info = NULL, trace_env = caller_env()) {
  expect(FALSE, message, info = info, trace_env = trace_env)
}

#' @rdname fail
#' @export
succeed <- function(message = "Success has been forced", info = NULL) {
  expect(TRUE, message, info = info)
}

#' Negate an expectation
#'
#' This negates an expectation, making it possible to express that you
#' want the opposite of a standard expectation. This function is deprecated
#' and will be removed in a future version.
#'
#' @param f an existing expectation function
#' @keywords internal
#' @export
not <- function(f) {
  warning("`not()` is deprecated.", call. = FALSE)
  stopifnot(is.function(f))

  negate <- function(expt) {
    expect(
      !expectation_success(expt),
      failure_message = paste0("NOT(", expt$message, ")"),
      srcref = expt$srcref
    )
  }

  function(...) {
    negate(capture_expectation(f(...)))
  }
}
