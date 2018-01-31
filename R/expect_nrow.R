#' Expectation: Does an object have the specified number of rows?
#'
#' @param object Object to test the number of rows using \code{\link{NROW}}
#' @param n Expected number of rows
#' @param info extra information to be included in the message
#'
#' @return None
#' @family expectations
#' @export
#' @examples
#' x <- c(a = 1, b = 2, c = 3)
#' expect_nrow(x, 3)
#' x <- data.frame(a = 1, b = 2, c = 3)
#' expect_nrow(x, 1)
expect_nrow <- function(object, n, info = NULL) {
  stopifnot(is.numeric(n), length(n) == 1)
  act <- quasi_label(enquo(object))
  act$NROW <- NROW(act$val)
  expect(act$NROW == n, sprintf("%s has NROW %i, not NROW %i.", act$lab, act$NROW, n), info = info)
  invisible(act$val)
}
