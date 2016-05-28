#' @rdname compare
#' @export
compare.POSIXt <- function(x, y, tolerance = 0.001, ..., max_diffs = 9) {
  if (!inherits(y, "POSIXt")) {
    return(diff_class(x, y))
  }
  if (!same_length(x, y)) {
    return(diff_length(x, y))
  }

  x <- standardise_tzone(as.POSIXct(x))
  y <- standardise_tzone(as.POSIXct(y))

  if (!same_attr(x, y)) {
    return(diff_attr(x, y))
  }

  diff <- !vector_equal_tol(x, y, tolerance = tolerance)

  if (!any(diff)) {
    no_difference()
  } else {
    mismatches <- mismatch_numeric(x, y, diff)
    difference(format(mismatches, max_diffs = max_diffs))
  }
}

standardise_tzone <- function(x) {
  if (is.null(attr(x, "tzone")) || identical(attr(x, "tzone"), Sys.timezone())) {
    attr(x, "tzone") <- ""
  }

  x
}
