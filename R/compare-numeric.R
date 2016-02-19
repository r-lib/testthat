#' @include compare.r
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
compare.numeric <- function(x, y, ..., max_diffs = 9) {
  all_equal <- all.equal(x, y, ...)
  if (isTRUE(all_equal))
    return(no_difference())

  if (!typeof(y) %in% c("integer", "double"))
    return(diff_type(x, y))
  if (!same_class(x, y))
    return(diff_class(x, y))
  if (!same_length(x, y))
    return(diff_length(x, y))
  if (!same_attr(x, y))
    return(diff_attr(x, y))

  diff <- !vector_equal(x, y)

  if (!any(diff)) {
    no_difference()
  } else {
    mismatches <- mismatch_numeric(x, y, diff, max_diffs = max_diffs)
    difference(format(mismatches))
  }
}

#' @export
mismatch_numeric <- function(x, y, diff = !vector_equal(x, y), max_diffs = 9) {
  n <- min(length(x), max_diffs)
  pos <- which(diff)[1:n]

  structure(
    list(
      pos = pos,
      x = x[pos],
      y = y[pos],
      diff = x[pos] - y[pos],
      n = n,
      n_all = length(diff),
      n_miss = sum(diff),
      mu = mean(abs(x[diff] - y[diff]), na.rm = TRUE)
    ),
    class = "mismatch_numeric"
  )
}

#' @export
format.mismatch_numeric <- function(x, ..., digits = 3) {
  n_diff <- paste0(x$n_miss, "/", x$n_all, " mismatches")

  if (x$n > 1) {
    mu <- format(x$mu, digits = digits, trim = TRUE)
    n_diff <- paste0(n_diff, " (average diff: ", mu, ").")
  }

  diffs <- paste0(
    format(paste0("[", x$pos, "]")), " ",
    format(x$x, digits = digits),
    " - ",
    format(x$y, digits = digits),
    " == ",
    format(x$diff, digits = digits)
  )

  if (x$n_miss > x$n) {
    diffs <- c(diffs, "...")
  }

  paste0(n_diff, "\n", paste(diffs, collapse = "\n"))
}

#' @export
print.mismatch_numeric <- function(x, ..., max_diffs = 10) {
  cat(format(x, ..., max_diffs = 10))
}
