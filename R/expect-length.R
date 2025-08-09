#' Do you expect a vector with this length?
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
  check_number_whole(n, min = 0)

  act <- quasi_label(enquo(object))
  act$n <- length(act$val)

  if (act$n != n) {
    msg <- sprintf("%s has length %i, not length %i.", act$lab, act$n, n)
    return(fail(msg))
  }
  pass(act$val)
}
