#' Does code return an object with the specified shape?
#'
#' By "shape", we mean an object's [dim()], or, for one-dimensional objects,
#'   it's [length()]. Thus this is an extension of [expect_length()] to more
#'   general objects like [data.frame()], [matrix()], and [array()].
#' To wit, first, the object's `dim()` is checked. If non-`NULL`, it is compared
#'   to `shape` (or one/both of `nrow`, `ncol`, if they are supplied, in which
#'   case they take precedence). If `dim(object)` is `NULL`, `length(object)`
#'   is compared to `shape`.
#'
#' @seealso [expect_length()] to specifically make assertions about the
#'   [length()] of a vector.
#' @inheritParams expect_that
#' @param shape Expected shape, a numeric vector.
#' @param nrow Expected number of rows, numeric.
#' @param ncol Expected number of columns, numeric.
#' @family expectations
#' @export
#' @examples
expect_shape = function(object, shape, nrow, ncol) {
  stopifnot(
    missing(shape) || is.numeric(shape),
    missing(nrow) || is.numeric(nrow),
    missing(ncol) || is.numeric(ncol)
  )

  dim_object <- dim(object)
  if (is.null(dim_object)) {
    if (missing(shape)) {
      stop("`shape` must be provided for one-dimensional inputs")
    }
    return(expect_length(object, shape))
  }

  act <- quasi_label(enquo(object), arg = "object")

  if (missing(nrow) && missing(ncol)) {
    # testing dim
    if (missing(shape)) {
      stop("`shape` must be provided if `nrow` and `ncol` are not")
    }
    act$shape <- dim_object

    expect(
      isTRUE(all.equal(act$shape, shape)),
      sprintf("%s has shape (%s), not (%s).", act$lab, toString(act$shape), toString(shape))
    )
  } else if (missing(nrow) && !missing(ncol)) {
    # testing only ncol
    act$ncol <- dim_object[2L]

    expect(
      act$ncol == ncol,
      sprintf("%s has %i columns, not %i.", act$lab, act$ncol, ncol)
    )
  } else if (!missing(nrow) && missing(ncol)) {
    # testing only nrow
    act$nrow <- dim_object[1L]

    expect(
      act$nrow == nrow,
      sprintf("%s has %i rows, not %i.", act$lab, act$nrow, nrow)
    )
  } else { # !missing(nrow) && !missing(ncol)
    # testing both nrow & ncol (useful, e.g., for testing dim(.)[1:2] for arrays
    act$nrow <- dim_object[1L]
    act$ncol <- dim_object[2L]

    expect(
      act$nrow == nrow && act$ncol == ncol,
      sprintf("%s has %i rows and %i columns, not %i rows and %i columns", act$lab, act$nrow, act$ncol, nrow, ncol)
    )
  }

  return(act$val)
}
