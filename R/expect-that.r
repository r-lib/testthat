#' Expect that a condition holds.
#'
#' An old style of testing that's no longer encouraged.
#'
#' @param object object to test
#' @param condition, a function that returns whether or not the condition
#'   is met, and if not, an error message to display.
#' @param label object label. When \code{NULL}, computed from deparsed object.
#' @param info extra information to be included in the message (useful when
#'   writing tests in loops).
#' @return the (internal) expectation result as an invisible list
#' @keywords internal
#' @export
#' @seealso \code{\link{fail}} for an expectation that always fails.
#' @examples
#' expect_that(5 * 2, equals(10))
#' expect_that(sqrt(2) ^ 2, equals(2))
#' \dontrun{
#' expect_that(sqrt(2) ^ 2, is_identical_to(2))
#' }
expect_that <- function(object, condition, info = NULL, label = NULL) {
  stopifnot(length(info) <= 1, length(label) <= 1)

  label <- label %||% find_expr("object")
  exp <- condition(object)
  stopifnot(is.expectation(exp))

  exp <- update_expectation(exp, srcref = find_test_srcref(), info = info,
                            label = label)

  expect(exp)
}

#' A default expectation that always fails.
#'
#' The fail function forces a test to fail.  This is useful if you want to
#' test a pre-condition '
#'
#' @param message a string to display.
#' @export
#' @examples
#' \dontrun{
#' test_that("this test fails", fail())
#' }
fail <- function(message = "Failure has been forced") {
  exp <- expectation(FALSE, message)
  expect(exp)
}


#' A default expectation that always succeeds.
#'
#' @param message a string to display.
#' @export
#' @examples
#' \dontrun{
#' test_that("this test fails", fail())
#' }
succeed <- function(message = "Success has been forced") {
  exp <- expectation(TRUE, message)
  expect(exp)
}

#' Negate an expectation
#'
#' This negates an expectation, making it possible to express that you
#' want the opposite of a standard expectation. This function is soft-deprecated
#' and will be removed in a future version.
#'
#' @param f an existing expectation function
#' @keywords internal
#' @export
not <- function(f) {
  warning("`not()` is deprecated.", call. = FALSE)
  stopifnot(is.function(f))

  function(...) {
    res <- f(...)
    negate(res)
  }
}
