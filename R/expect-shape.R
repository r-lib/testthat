#' Does code return an object with the specified shape?
#'
#' This is a generalization of [expect_length()] to test the "shape" of
#'   more general objects like data.frames, matrices, and arrays.
#'
#' @seealso [expect_length()] to specifically make assertions about the
#'   [length()] of a vector.
#' @inheritParams expect_that
#' @param ... Ignored.
#' @param length Expected [length()] of `object`.
#' @param nrow Expected [nrow()] of `object`.
#' @param ncol Expected [ncol()] of `object`.
#' @param dim Expected [dim()] of `object`.
#' @family expectations
#' @export
#' @examples
expect_shape = function(object, ..., length, nrow, ncol, dim) {
  rlang::check_exclusive(length, nrow, ncol, dim)

  # Re-use expect_length() to ensure they stay in sync.
  if (!missing(length)) {
    return(expect_length(object, length))
  }

  # need base:: qualification or we might trigger an error for missing(length)
  length <- base::length

  act <- quasi_label(enquo(object), arg = "object")
  dim_object <- base::dim(object)

  expect(
    !is.null(dim_object),
    sprintf("%s has no dimensions.", act$lab)
  )

  if (!missing(nrow)) {
    act$nrow <- dim_object[1L]

    expect(
      act$nrow == nrow,
      sprintf("%s has %i rows, not %i.", act$lab, act$nrow, nrow)
    )
  } else if (!missing(ncol)) {
    expect(
      length(dim_object) >= 2L,
      sprintf("%s has only one dimension.", act$lab)
    )

    act$ncol <- dim_object[2L]

    expect(
      act$ncol == ncol,
      sprintf("%s has %i columns, not %i.", act$lab, act$ncol, ncol)
    )
  } else { # !missing(dim)
    act$dim <- dim_object

    expect(
      length(act$dim) == length(dim),
      sprintf("%s has %i dimensions, not %i", act$lab, length(act$dim), length(dim))
    )

    expect(
      isTRUE(all(act$dim == dim)),
      sprintf("%s has shape (%s), not (%s).", act$lab, toString(act$dim), toString(dim))
    )
  }
}
