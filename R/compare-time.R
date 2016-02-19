#' @rdname compare
#' @export
compare.POSIXt <- function(x, y, ..., max_diffs = 9) {
  if (identical(x, y)) {
    return(no_difference())
  }

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

  diff <- !vector_equal(x, y)

  if (!any(diff)) {
    no_difference()
  } else {
    mismatches <- mismatch_numeric(x, y, diff)
    difference(format(mismatches, max_diffs = max_diffs))
  }


}

standardise_tzone <- function(x) {
  if (is.null(attr(x, "tzone"))) {
    attr(x, "tzone") <- ""
  }

  x
}
