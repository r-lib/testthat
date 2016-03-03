#' Expectation: is the object equal to a value?
#'
#' \itemize{
#' \item \code{expect_identical} tests with \code{\link{identical}}
#' \item \code{expect_equal} tests with \code{\link{all.equal}}
#' \item \code{expect_equivalent} tests with \code{\link{all.equal}} and
#'   \code{check.attributes = FALSE}
#' }
#
#' @param expected Expected value
#' @param expected.label Equivalent of \code{label} for shortcut form.
#' @inheritParams expect_that
#' @family expectations
#' @examples
#' a <- 10
#' expect_equal(a, 10)
#'
#' # Use expect_equal() when testing for numeric equality
#' sqrt(2) ^ 2 - 1
#' expect_equal(sqrt(2) ^ 2, 2)
#' # Neither of these forms take floating point representation errors into
#' # account
#' \dontrun{
#' expect_true(sqrt(2) ^ 2 == 2)
#' expect_identical(sqrt(2) ^ 2, 2)
#' }
#'
#' # You can pass on additional arguments to all.equal:
#' \dontrun{
#' # Test the ABSOLUTE difference is within .002
#' expect_equal(10.01, 10, tolerance = .002, scale = 1)
#' }
#'
#' # Test the RELATIVE difference is within .002
#' x <- 10
#' expect_equal(10.01, expected = x, tolerance = 0.002, scale = x)
#'
#' # expect_equivalent ignores attributes
#' a <- b <- 1:3
#' names(b) <- letters[1:3]
#' expect_equivalent(a, b)
#' @name equality-expectations
NULL

#' @export
#' @rdname equality-expectations
#' @param ... other values passed to \code{\link{all.equal}}
expect_equal <- function(object, expected, ..., info = NULL, label = NULL,
                         expected.label = NULL) {

  lab_act <- make_label(object, label)
  lab_exp <- make_label(expected, expected.label)

  comp <- compare(object, expected, ...)
  expect(
    comp$equal,
    sprintf("%s not equal to %s.\n%s", lab_act, lab_exp, comp$message),
    info = info
  )

  invisible(object)
}

#' @export
#' @rdname equality-expectations
expect_equivalent <- function(object, expected, info = NULL, label = NULL,
                              expected.label = NULL) {
  lab_act <- make_label(object, label)
  lab_exp <- make_label(expected, expected.label)

  comp <- compare(object, expected, check.attributes = FALSE)
  expect(
    comp$equal,
    sprintf("%s not equivalent to %s.\n%s", lab_act, lab_exp, comp$message),
    info = info
  )
  invisible(object)
}

#' @export
#' @rdname equality-expectations
expect_identical <- function(object, expected, info = NULL, label = NULL,
                             expected.label = NULL) {

  lab_act <- make_label(object, label)
  lab_exp <- make_label(expected, expected.label)

  ident <- identical(object, expected)
  if (ident) {
    msg <- ""
  } else {
    compare <- compare(object, expected)
    if (compare$equal) {
      msg <- "Objects equal but not identical"
    } else {
      msg <- compare$message
    }
  }

  expect(
    ident,
    sprintf("%s not identical to %s.\n%s", lab_act, lab_exp, msg),
    info = info
  )
  invisible(object)
}

