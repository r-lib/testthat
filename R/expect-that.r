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

# find the srcref of the test call, or NULL
find_test_srcref <- function() {
  # candidate frame is not in the testthat package,
  # its call matches expect_* and has parsing info attached
  .is_test_frame <- function(i) {
    # is enclosure of the frame containing the call inside testthat package ?
    inside <- identical(environmentName(parent.env(sys.frame(i - 1)))
      , 'testthat')
    match_expect <- any(grepl('expect_', sys.call(i)))
    has_srcref <- !is.null(attr(sys.call(i), 'srcref'))

    !inside && match_expect && has_srcref
  }

  # find the first call (tracing back) that seems good
  nbe <- Find(.is_test_frame, seq_len(sys.nframe()), right = TRUE)

  if (length(nbe) == 0 || is.na(nbe)) {
    return(NULL)
  }

  cc <- sys.call(nbe)
  src <- attr(cc, 'srcref')
  if (is.null(src))  warning("could not get srcref")

  src
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
  exp <- expectation(FALSE, message, "This always succeeds")
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
  exp <- expectation(TRUE, message, "This always fails")
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
