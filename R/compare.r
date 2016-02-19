#' Provide human-readable comparison of two objects
#'
#' \code{compare} is similar to \code{\link[base]{all.equal}()}, but shows
#' you examples of where the failures occured.
#'
#' @export
#' @param x,y Objects to compare
#' @param ... Additional arguments used to control specifics of comparison
compare <- function(x, y, ...) {
  UseMethod("compare", x)
}

comparison <- function(equal = TRUE, message = "Equal") {
  stopifnot(is.logical(equal), length(equal) == 1)
  stopifnot(is.character(message), length(message) == 1)

  structure(
    list(
      equal = equal,
      message = message
    ),
    class = "comparison"
  )
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

same_type <- function(x, y) {
  if (typeof(x) != typeof(y)) return(FALSE)
  if (!identical(class(x), class(y))) return(FALSE)

  TRUE
}
