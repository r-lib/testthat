#' Provide human-readable comparison of two objects
#'
#' `compare` is similar to [base::all.equal()], but shows
#' you examples of where the failures occurred.
#'
#' @export
#' @param x,y Objects to compare
#' @param ... Additional arguments used to control specifics of comparison
#' @keywords internal
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
compare.default <- function(x, y, ..., max_diffs = 9) {
  same <- all.equal(x, y, ...)
  if (length(same) > max_diffs) {
    same <- c(same[1:max_diffs], "...")
  }

  comparison(identical(same, TRUE), as.character(same))
}

print_out <- function(x, ...) {
  lines <- capture_output_lines(x, ..., print = TRUE)
  paste0(lines, collapse = "\n")
}

# Common helpers ---------------------------------------------------------------

same_length <- function(x, y) length(x) == length(y)
diff_length <- function(x, y) difference(fmt = "Lengths differ: %i is not %i", length(x), length(y))

same_type <- function(x, y) identical(typeof(x), typeof(y))
diff_type <- function(x, y) difference(fmt = "Types not compatible: %s is not %s", typeof(x), typeof(y))

same_class <- function(x, y) {
  if (!is.object(x) && !is.object(y)) {
    return(TRUE)
  }
  identical(class(x), class(y))
}
diff_class <- function(x, y) {
  difference(fmt = "Classes differ: %s is not %s", klass(x), klass(y))
}

same_attr <- function(x, y) {
  is.null(attr.all.equal(x, y))
}
diff_attr <- function(x, y) {
  withr::local_options(list(useFancyQuotes = FALSE))

  out <- attr.all.equal(x, y)
  difference(out)
}

vector_equal <- function(x, y) {
  (is.na(x) & is.na(y)) | (!is.na(x) & !is.na(y) & x == y)
}

vector_equal_tol <- function(x, y, tolerance = .Machine$double.eps ^ 0.5) {
  (is.na(x) & is.na(y)) |
    (!is.na(x) & !is.na(y)) & (x == y | abs(x - y) < tolerance)

}
