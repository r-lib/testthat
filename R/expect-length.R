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
  act$n <- length(act$val)

  if (act$n != n) {
    msg <- sprintf("%s has length %i, not length %i.", act$lab, act$n, n)
    return(fail(msg))
  }
  pass(act$val)
}
