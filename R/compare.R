#' Provide human-readable comparison of two objects
#'
#' \code{compare} is similar to \code{\link[base]{all.equal}()}, but shows
#' you examples of where the failures occured.
#'
#' @export
#' @param x,y Objects to compare
#' @param tolerance Numerical tolerance: any differences smaller than this
#'   value will be ignored.
#' @param ... Additional arguments used to control specifics of comparison
compare <- function(x, y, ...) {
  UseMethod("compare", x)
}

comparison <- function(equal = TRUE, message = "Equal") {
  stopifnot(is.logical(equal), length(equal) == 1)
  stopifnot(is.character(message))

  structure(
    list(
      equal = equal,
      message = paste(message, collapse = "\n")
    ),
    class = "comparison"
  )
}
difference <- function(..., fmt = "%s") {
  comparison(FALSE, sprintf(fmt, ...))
}
no_difference <- function() {
  comparison()
}

#' @export
print.comparison <- function(x, ...) {
  if (x$equal) {
    cat("Equal\n")
    return()
  }

  cat(x$message)
}

#' @export
#' @rdname compare
compare.default <- function(x, y, ...){
  same <- all.equal(x, y, ...)
  comparison(identical(same, TRUE), paste0(same, collapse = "\n"))
}

print_out <- function(x, ...) {
  lines <- utils::capture.output(print(x, ...))
  paste0(lines, collapse = "\n")
}

# Common helpers ---------------------------------------------------------------

same_length <- function(x, y) length(x) == length(y)
diff_length <- function(x, y) difference(fmt = "Lengths differ: %i vs %i", length(x), length(y))

same_type <- function(x, y) identical(typeof(x), typeof(y))
diff_type <- function(x, y) difference(fmt = "Types not compatible: %s vs %s", typeof(x), typeof(y))

same_class <- function(x, y) {
  if (!is.object(x) && !is.object(y))
    return(TRUE)
  identical(class(x), class(y))
}
diff_class <- function(x, y) {
  difference(fmt = "Classes differ: %s vs %s", klass(x), klass(y))
}

same_attr <- function(x, y) {
  is.null(attr.all.equal(x, y))
}
diff_attr <- function(x, y) {
  old <- options(useFancyQuotes = FALSE)
  on.exit(options(old), add = TRUE)

  out <- attr.all.equal(x, y)
  difference(out)
}

vector_equal <- function(x, y) {
  (is.na(x) & is.na(y)) | (!is.na(x) & !is.na(y) & x == y)
}

vector_equal_tol <- function(x, y, tolerance = .Machine$double.eps ^ 0.5) {
  (is.na(x) & is.na(y)) | (!is.na(x) & !is.na(y) & abs(x - y) < tolerance)
}

