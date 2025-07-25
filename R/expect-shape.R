#' Does code return an object with the specified shape?
#'
#' This is a generalization of [expect_length()] to test the "shape" of
#' more general objects like data.frames, matrices, and arrays.
#'
#' @seealso [expect_length()] to specifically make assertions about the
#'   [length()] of a vector.
#' @inheritParams expect_that
#' @param ... Ignored.
#' @param length Expected [length()] of `object`.
#' @param nrow,ncol Expected [nrow()]/[ncol()] of `object`.
#' @param dim Expected [dim()] of `object`.
#' @family expectations
#' @export
#' @examples
#' x <- matrix(1:9, nrow = 3)
#' expect_shape(x, length = 9)
#' expect_shape(x, nrow = 3)
#' expect_shape(x, ncol = 3)
#' expect_shape(x, dim = c(3, 3))
expect_shape = function(object, ..., length, nrow, ncol, dim) {
  check_dots_empty()
  check_exclusive(length, nrow, ncol, dim)
  act <- quasi_label(enquo(object), arg = "object")

  # Re-use expect_length() to ensure they stay in sync.
  if (!missing(length)) {
    return(expect_length_impl_(act, length))
  }
  # now that we've handled the length argument, revert to usual base function
  length <- base::length

  dim_object <- base::dim(object)
  if (is.null(dim_object)) {
    fail(sprintf("%s has no dimensions.", act$lab))
  }

  if (!missing(nrow)) {
    check_number_whole(nrow, allow_na = TRUE)
    act$nrow <- dim_object[1L]

    expect(
      identical(as.integer(act$nrow), as.integer(nrow)),
      sprintf("%s has %i rows, not %i.", act$lab, act$nrow, nrow)
    )
  } else if (!missing(ncol)) {
    check_number_whole(ncol, allow_na = TRUE)

    if (length(dim_object) == 1L) {
      fail(sprintf("%s has only one dimension.", act$lab))
    }

    act$ncol <- dim_object[2L]

    expect(
      identical(as.integer(act$ncol), as.integer(ncol)),
      sprintf("%s has %i columns, not %i.", act$lab, act$ncol, ncol)
    )
  } else {
    # !missing(dim)
    if (!is.numeric(dim) && !is.integer(dim)) {
      stop_input_type(dim, "a numeric vector")
    }
    act$dim <- dim_object

    if (length(act$dim) != length(dim)) {
      fail(sprintf(
        "%s has %i dimensions, not %i.",
        act$lab,
        length(act$dim),
        length(dim)
      ))
    }

    expect(
      identical(as.integer(act$dim), as.integer(dim)),
      sprintf(
        "%s has dim (%s), not (%s).",
        act$lab,
        toString(act$dim),
        toString(dim)
      )
    )
  }

  invisible(act$val)
}
