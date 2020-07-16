#' Provide human-readable comparison of two objects
#'
#' @description
#' `r lifecycle::badge("superseded")`
#'
#' `compare` is similar to [base::all.equal()], but somewhat buggy in its
#' use of `tolerance`. Please use [waldo](https://waldo.r-lib.org/) instead.
#'
#' @export
#' @param x,y Objects to compare
#' @param ... Additional arguments used to control specifics of comparison
#' @keywords internal
#' @order 1
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
#' @order 2
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


# character ---------------------------------------------------------------

#' @param max_diffs Maximum number of differences to show
#' @param max_lines Maximum number of lines to show from each difference
#' @param check.attributes If `TRUE`, also checks values of attributes.
#' @param width Width of output device
#' @rdname compare
#' @export
#' @examples
#' # Character -----------------------------------------------------------------
#' x <- c("abc", "def", "jih")
#' compare(x, x)
#'
#' y <- paste0(x, "y")
#' compare(x, y)
#'
#' compare(letters, paste0(letters, "-"))
#'
#' x <- "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cursus
#'  tincidunt auctor. Vestibulum ac metus bibendum, facilisis nisi non, pulvinar
#'  dolor. Donec pretium iaculis nulla, ut interdum sapien ultricies a. "
#' y <- "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cursus
#'  tincidunt auctor. Vestibulum ac metus1 bibendum, facilisis nisi non, pulvinar
#'  dolor. Donec pretium iaculis nulla, ut interdum sapien ultricies a. "
#' compare(x, y)
#' compare(c(x, x), c(y, y))
#'
compare.character <- function(x, y, check.attributes = TRUE, ...,
                              max_diffs = 5, max_lines = 5,
                              width = cli::console_width()) {
  if (identical(x, y)) {
    return(no_difference())
  }

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

  diff <- !vector_equal(x, y)

  if (!any(diff)) {
    no_difference()
  } else {
    mismatches <- mismatch_character(x, y, diff)
    difference(format(
      mismatches,
      max_diffs = max_diffs,
      max_lines = max_lines,
      width = width
    ))
  }
}

mismatch_character <- function(x, y, diff = !vector_equal(x, y)) {
  structure(
    list(
      i = which(diff),
      x = x[diff],
      y = y[diff],
      n = length(diff),
      n_diff = sum(diff)
    ),
    class = "mismatch_character"
  )
}

#' @export
format.mismatch_character <- function(x, ...,
                                      max_diffs = 5,
                                      max_lines = 5,
                                      width = cli::console_width()) {
  width <- width - 6 # allocate space for labels
  n_show <- seq_len(min(x$n_diff, max_diffs))

  encode <- function(x) encodeString(x, quote = '"')
  show_x <- str_trunc(encode(x$x[n_show]), width * max_lines)
  show_y <- str_trunc(encode(x$y[n_show]), width * max_lines)
  show_i <- x$i[n_show]

  sidebyside <- Map(function(x, y, pos) {
    x <- paste0("x[", pos, "]: ", str_chunk(x, width))
    y <- paste0("y[", pos, "]: ", str_chunk(y, width))
    paste(c(x, y), collapse = "\n")
  }, show_x, show_y, show_i)

  summary <- paste0(x$n_diff, "/", x$n, " mismatches")
  paste0(summary, "\n", paste0(sidebyside, collapse = "\n\n"))
}

#' @export
print.mismatch_character <- function(x, ...) {
  cat(format(x, ...), "\n", sep = "")
}

str_trunc <- function(x, length) {
  too_long <- nchar(x) > length

  x[too_long] <- paste0(substr(x[too_long], 1, length - 3), "...")
  x
}
str_chunk <- function(x, length) {
  lines <- ceiling(nchar(x) / length)
  start <- (seq_len(lines) - 1) * length + 1

  substring(x, start, start + length - 1)
}

# compare.numeric ---------------------------------------------------------

#' @export
#' @rdname compare
#' @param tolerance Numerical tolerance: any differences (in the sense of
#'   [base::all.equal()]) smaller than this value will be ignored.
#'
#'   The default tolerance is `sqrt(.Machine$double.eps)`, unless long doubles
#'   are not available, in which case the test is skipped.
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
compare.numeric <- function(x, y,
                            tolerance = testthat_tolerance(),
                            check.attributes = TRUE,
                            ..., max_diffs = 9) {
  all_equal <- all.equal(
    x, y, tolerance = tolerance,
    check.attributes = check.attributes, ...
  )
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
  if (check.attributes && !same_attr(x, y)) {
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

#' @export
#' @rdname compare
testthat_tolerance <- function(x) {
  if (identical(capabilities("long.double"), FALSE)) {
    skip("Long doubles not available and `tolerance` not supplied")
  }

  .Machine$double.eps ^ 0.5
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

# compare.time ------------------------------------------------------------

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

