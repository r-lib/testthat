#' @param check.attributes If `TRUE`, also checks values of attributes.
#' @param covr If `TRUE`, do not compare the statistics part of the boot object.
#' This circumvents the problem that covr injects code which ends up in the
#' statistics part, which makes the comparison fail.
#' @rdname compare
#' @export
compare.boot <- function(x, y, check.attributes = TRUE, covr = FALSE, ...) {
  if (!same_type(x, y)) {
    return(diff_type(x, y))
  }
  if (!same_class(x, y)) {
    return(diff_class(x, y))
  }
  if (!same_length(x, y)) {
    return(diff_length(x, y))
  }
  if (check.attributes && !same_attr(x, y)) {
    return(diff_attr(x, y))
  }
  if (covr){
    return(compare(
      # We cannot compare the statistic, because covr adds code there
      # We might make this nicer, by actually removing the bits that covr adds
      x[names(x) != "statistic"], y[names(y) != "statistic"]))
  } else{
    return(compare.default(x, y))
  }
}
