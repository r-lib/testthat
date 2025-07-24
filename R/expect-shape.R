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
  # absent, not present, due to '!' operator precedence
  n_absent <- missing(length) + missing(nrow) + missing(ncol) + missing(dim)
  if (n_absent != 3L) {
    cli::cli_abort(
      "Exactly one of {.arg length}, {.arg nrow}, {.arg ncol}, or {.arg dim} must be provided."
    )
  }

  # Re-use expect_length() to ensure they stay in sync.
  if (!missing(length)) {
    return(expect_length(object, length))
  }

  act <- quasi_label(enquo(object), arg = "object")
  # need base:: qualification or we might trigger an error for missing(dim)
  dim_object <- base::dim(object)

  if (!missing(nrow)) {
    act$nrow <- dim_object[1L]

    expect(
      act$nrow == nrow,
      sprintf("%s has %i rows, not %i.", act$lab, act$nrow, nrow)
    )
  } else if (!missing(ncol)) {
    act$ncol <- dim_object[2L]

    expect(
      act$ncol == ncol,
      sprintf("%s has %i columns, not %i.", act$lab, act$ncol, ncol)
    )
  } else { # !missing(dim)
    act$dim <- dim_object

    expect(
      isTRUE(all.equal(act$dim, dim)),
      sprintf("%s has shape (%s), not (%s).", act$lab, toString(act$dim), toString(dim))
    )
  }
}
