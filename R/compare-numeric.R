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
compare.numeric <- function(x, y, ..., max_diffs = 10) {
  equal <- all.equal(x, y, ...)
  if (isTRUE(equal)) return(comparison())

  # If they're not the same type or length, fallback to default method
  if (length(x) != length(y)) {
    return(compare(as.character(x), as.character(y)))
  }

  if (!all(c(class(x), class(y)) %in% c("integer", "numeric", "complex"))) {
    equal <- paste0(equal, collapse = "\n")
    return(comparison(FALSE, equal))
  }

  if (length(x) == 1) {
    msg <- paste0(format(x, digits = 3), " - ", format(y, digits = 3),
      " == ", format(x - y, digits = 3))
    return(comparison(FALSE, msg))
  }

  # If vectorwise-equal, fallback to default method
  diff <- xor(is.na(x), is.na(y)) | x != y
  diff[is.na(diff)] <- FALSE

  if (!any(diff)) {
    return(NextMethod())
  }

  mismatch <- data.frame(pos = which(diff), x = x[diff], y = y[diff])
  mismatch$diff <- mismatch$x - mismatch$y

  n <- min(max_diffs, nrow(mismatch))
  mu <- mean(abs(x[diff] - y[diff]), na.rm = TRUE)

  msg <- paste0(
    sum(diff), "/", length(diff), " mismatches ",
    "(average diff: ", format(mu, digits = 3), ").\n",
    "First ", n, ":\n",
    print_out(mismatch[1:n, , drop = FALSE], row.names = FALSE, digits = 3)
  )
  comparison(FALSE, msg)
}


#' @export
#' @rdname compare
compare.complex <- compare.numeric
