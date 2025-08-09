#' Do you expect an object with this shape?
#'
#' This is a generalization of [expect_length()] to test the "shape" of
#' more general objects like data.frames, matrices, and arrays.
#'
#' @seealso [expect_length()] to specifically make assertions about the
#'   [length()] of a vector.
#' @inheritParams expect_that
#' @param ... Ignored.
#' @param nrow,ncol Expected [nrow()]/[ncol()] of `object`.
#' @param dim Expected [dim()] of `object`.
#' @family expectations
#' @export
#' @examples
#' x <- matrix(1:9, nrow = 3)
#' expect_shape(x, nrow = 3)
#' expect_shape(x, ncol = 3)
#' expect_shape(x, dim = c(3, 3))
expect_shape = function(object, ..., nrow, ncol, dim) {
  check_dots_empty()
  check_exclusive(nrow, ncol, dim)
  act <- quasi_label(enquo(object))

  dim_object <- base::dim(object)
  if (is.null(dim_object)) {
    return(fail(sprintf("%s has no dimensions.", act$lab)))
  }

  if (!missing(nrow)) {
    check_number_whole(nrow, allow_na = TRUE)
    act$nrow <- dim_object[1L]

    if (!identical(as.integer(act$nrow), as.integer(nrow))) {
      msg <- sprintf("%s has %i rows, not %i.", act$lab, act$nrow, nrow)
      return(fail(msg))
    }
  } else if (!missing(ncol)) {
    check_number_whole(ncol, allow_na = TRUE)

    if (length(dim_object) == 1L) {
      return(fail(sprintf("%s has only one dimension.", act$lab)))
    }

    act$ncol <- dim_object[2L]

    if (!identical(as.integer(act$ncol), as.integer(ncol))) {
      msg <- sprintf("%s has %i columns, not %i.", act$lab, act$ncol, ncol)
      return(fail(msg))
    }
  } else {
    # !missing(dim)
    if (!is.numeric(dim) && !is.integer(dim)) {
      stop_input_type(dim, "a numeric vector")
    }
    act$dim <- dim_object

    if (length(act$dim) != length(dim)) {
      return(fail(sprintf(
        "%s has %i dimensions, not %i.",
        act$lab,
        length(act$dim),
        length(dim)
      )))
    }

    if (!identical(as.integer(act$dim), as.integer(dim))) {
      msg <- sprintf(
        "%s has dim (%s), not (%s).",
        act$lab,
        toString(act$dim),
        toString(dim)
      )
      return(fail(msg))
    }
  }

  pass(act$val)
}
