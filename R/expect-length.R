#' Does code return a vector with the specified length?
#'
#' @seealso [expect_vector()] to make assertions about the "size" of a vector,
#'   [expect_shape()] for more general assertions about object "shape".
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

  act <- quasi_label(enquo(object), arg = "object")
  expect_length_impl_(act, n)
}

expect_length_impl_ <- function(act, n) {
  act$n <- length(act$val)

  expect(
    act$n == n,
    sprintf("%s has length %i, not length %i.", act$lab, act$n, n)
  )

  invisible(act$val)
}
