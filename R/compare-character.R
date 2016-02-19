#' @include compare.r
#' @param max_diffs Maximum number of differences to show
#' @param max_lines Maximum number of lines to show from each difference
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
compare.character <- function(x, y, ..., max_diffs = 5, max_lines = 5,
                              width = getOption("width")) {
  if (identical(x, y)) return(comparison())

  # If they're not the same type or length, fallback to default method
  if (!same_type(x, y)) return(NextMethod())

  lx <- length(x)
  ly <- length(y)
  if (lx != ly) {
    length(x) <- length(y) <- max(lx, ly)
    length_diff <- sprintf("Lengths (%s, %s) differ\n", lx, ly)
  } else {
    length_diff <- NULL
  }

  # If vectorwise-equal, fallback to default method
  diff <- xor(is.na(x), is.na(y)) | x != y
  diff[is.na(diff)] <- FALSE
  which_diff <- which(diff)

  if (length(which_diff) == 0L) {
    return(NextMethod())
  }

  width <- width - 6 # allocate space for labels
  n_show <- seq_len(min(length(which_diff), max_diffs))
  show <- which_diff[n_show]

  encode <- function(x) encodeString(x, quote = '"')
  show_x <- str_trunc(encode(x[show]), width * max_lines)
  show_y <- str_trunc(encode(y[show]), width * max_lines)

  sidebyside <- Map(function(x, y, pos) {
    x <- if (pos <= lx) paste0("x[", pos, "]: ", str_chunk(x, width))
    y <- if (pos <= ly) paste0("y[", pos, "]: ", str_chunk(y, width))
    paste(c(x, y), collapse = "\n")
  }, show_x, show_y, show)

  msg <- paste0(length_diff,
    sum(diff), " string mismatches:\n",
    paste0(sidebyside, collapse = "\n\n"))
  comparison(FALSE, msg)
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
