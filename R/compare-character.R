#' @include compare.R
#' @param max_diffs Maximum number of differences to show
#' @param max_lines Maximum number of lines to show from each difference
#' @param check.attributes If \code{TRUE}, also checks values of attributes.
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
                              width = getOption("width")) {

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
                                      width = getOption("width")) {
  width <- width - 6 # allocate space for labels
  n_show <- seq_len(min(x$n_diff, max_diffs))

  encode <- function(x) encodeString(x, quote = '"')
  show_x <- str_trunc(encode(x$x[n_show]), width * max_lines)
  show_y <- str_trunc(encode(x$y[n_show]), width * max_lines)

  sidebyside <- Map(function(x, y, pos) {
    x <- paste0("x[", pos, "]: ", str_chunk(x, width))
    y <- paste0("y[", pos, "]: ", str_chunk(y, width))
    paste(c(x, y), collapse = "\n")
  }, show_x, show_y, x$i)

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
