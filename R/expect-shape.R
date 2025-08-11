#' Do you expect an object with this length or shape?
#'
#' `expect_length()` inspects the [length()] of an object; `expect_shape()`
#' inspects the "shape" (i.e. [nrow()], [ncol()], or [dim()]) of
#' higher-dimensional objects like data.frames, matrices, and arrays.
#'
#' @seealso [expect_vector()] to make assertions about the "size" of a vector.
#' @inheritParams expect_that
#' @param n Expected length.
#' @family expectations
#' @export
#' @examples
#' expect_length(1, 1)
#' expect_length(1:10, 10)
#' show_failure(expect_length(1:10, 1))
#'
#' x <- matrix(1:9, nrow = 3)
#' expect_shape(x, nrow = 3)
#' show_failure(expect_shape(x, nrow = 4))
#' expect_shape(x, ncol = 3)
#' show_failure(expect_shape(x, ncol = 4))
#' expect_shape(x, dim = c(3, 3))
#' show_failure(expect_shape(x, dim = c(3, 4, 5)))
expect_length <- function(object, n) {
  check_number_whole(n, min = 0)

  act <- quasi_label(enquo(object))
  act$n <- length(act$val)

  if (act$n != n) {
    msg <- c(
      sprintf("Expected %s to have length %i.", act$lab, n),
      sprintf("Actual length: %i.", act$n)
    )
    return(fail(msg))
  }
  pass(act$val)
}

#' @param nrow,ncol Expected [nrow()]/[ncol()] of `object`.
#' @param dim Expected [dim()] of `object`.
#' @rdname expect_length
#' @param ... Not used; used to force naming of other arguments.
#' @export
expect_shape = function(object, ..., nrow, ncol, dim) {
  check_dots_empty()
  check_exclusive(nrow, ncol, dim)
  act <- quasi_label(enquo(object))

  dim_object <- base::dim(object)
  if (is.null(dim_object)) {
    return(fail(sprintf("Expected %s to have dimensions.", act$lab)))
  }

  if (!missing(nrow)) {
    check_number_whole(nrow, allow_na = TRUE)
    act$nrow <- dim_object[1L]

    if (!identical(as.integer(act$nrow), as.integer(nrow))) {
      msg <- c(
        sprintf("Expected %s to have %i rows.", act$lab, nrow),
        sprintf("Actual rows: %i.", act$nrow)
      )
      return(fail(msg))
    }
  } else if (!missing(ncol)) {
    check_number_whole(ncol, allow_na = TRUE)

    if (length(dim_object) == 1L) {
      msg <- sprintf("Expected %s to have more than one dimension.", act$lab)
      return(fail(msg))
    }

    act$ncol <- dim_object[2L]

    if (!identical(as.integer(act$ncol), as.integer(ncol))) {
      msg <- c(
        sprintf("Expected %s to have %i columns.", act$lab, ncol),
        sprintf("Actual columns: %i.", act$ncol)
      )
      return(fail(msg))
    }
  } else {
    # !missing(dim)
    if (!is.numeric(dim) && !is.integer(dim)) {
      stop_input_type(dim, "a numeric vector")
    }
    act$dim <- dim_object

    if (length(act$dim) != length(dim)) {
      msg <- c(
        sprintf("Expected %s to have %i dimensions.", act$lab, length(dim)),
        sprintf("Actual dimensions: %i.", length(act$dim))
      )
    }

    if (!identical(as.integer(act$dim), as.integer(dim))) {
      msg <- c(
        sprintf("Expected %s to have dim (%s).", act$lab, toString(dim)),
        sprintf("Actual dim: (%s).", toString(act$dim))
      )
      return(fail(msg))
    }
  }

  pass(act$val)
}
