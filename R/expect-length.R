#' Expectation: does a vector have the specified length?
#'
#' @inheritParams expect_that
#' @param n Expected length.
#' @family expectations
#' @export
#' @examples
#' expect_length(1, 1)
#' expect_length(1:10, 10)
#'
#' \dontrun{
#' expect_length(1:10, 1)
#' }
expect_length <- function(object, n) {
  stopifnot(is.numeric(n), length(n) == 1)
  lab <- label(object)

  if (!has_length(object)) {
    fail(sprintf("%s does not have a defined length.", lab))
  }

  expect(
    length(object) == n,
    sprintf("%s has length %i, not length %i.", lab, length(object), n)
  )

  invisible(object)
}

#' @importFrom methods selectMethod
has_length <- function(x) {
  # We can assert the length of objects that either are/inherit from base R
  # classes that have length defined, or are S4 objects that have a length
  # method defined. For an S4 object without a length method, the .Primitive
  # length function will always return 1, which could be misleading.
  typeof(x) %in% c("logical", "integer", "double", "complex", "character", "raw", "list") ||
    (isS4(x) && !identical(selectMethod(length, class(x)), length))
}
