#' @include compare.R
#' @export
#' @rdname compare
#' @examples
#' # Numeric -------------------------------------------------------------------
#'
#' x <- y <- runif(100)
#' y[sample(100, 10)] <- 5
#' compare(x, y)
#'
#' x <- y <- 1:10
#' x[5] <- NA
#' x[6] <- 6.5
#' compare(x, y)
#'
#' # Compare ignores minor numeric differences in the same way
#' # as all.equal.
#' compare(x, x + 1e-9)
compare.numeric <- function(x, y, tolerance = .Machine$double.eps ^ 0.5, ..., max_diffs = 9) {
  all_equal <- all.equal(x, y, tolerance = tolerance, ...)
  if (isTRUE(all_equal)) {
    return(no_difference())
  }

  if (!typeof(y) %in% c("integer", "double")) {
    return(diff_type(x, y))
  }
  if (!same_class(x, y)) {
    return(diff_class(x, y))
  }
  if (!same_length(x, y)) {
    return(diff_length(x, y))
  }
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

mismatch_numeric <- function(x, y, diff = !vector_equal(x, y)) {
  structure(
    list(
      i = which(diff),
      x = x[diff],
      y = y[diff],
      n = length(diff),
      n_diff = sum(diff),
      mu_diff = mean(abs(x[diff] - y[diff]), na.rm = TRUE)
    ),
    class = "mismatch_numeric"
  )
}

#' @export
format.mismatch_numeric <- function(x, ..., max_diffs = 9, digits = 3) {

  summary <- paste0(x$n_diff, "/", x$n, " mismatches")
  if (x$n_diff > 1) {
    mu <- format(x$mu_diff, digits = digits, trim = TRUE)
    summary <- paste0(summary, " (average diff: ", mu, ")")
  }

  n_show <- seq_len(min(x$n_diff, max_diffs))

  diffs <- paste0(
    format(paste0("[", x$i[n_show], "]")), " ",
    format(x$x[n_show], digits = digits),
    " - ",
    format(x$y[n_show], digits = digits),
    " == ",
    format(x$x[n_show] - x$y[n_show], digits = digits)
  )

  if (x$n_diff > length(n_show)) {
    diffs <- c(diffs, "...")
  }

  paste0(summary, "\n", paste(diffs, collapse = "\n"))
}

#' @export
print.mismatch_numeric <- function(x, ...) {
  cat(format(x, ...), "\n", sep = "")
}
