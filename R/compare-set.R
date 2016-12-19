#' @export
#' @rdname compare
compare_set <- function(x,
                        y,
                        ...,
                        max_diffs = 5,
                        max_lines = 5,
                        width = getOption("width")) {
  if (setequal(x, y)) {
    return(no_difference())
  }

  mismatches <- mismatch_set(x, y)
  difference(format(
    mismatches,
    max_diffs = max_diffs,
    max_lines = max_lines,
    width = width
  ))

}

mismatch_set <- function(x, y) {
  structure(list(
    x = setdiff(x, y),
    y = setdiff(y, x),
    n_x = length(setdiff(x, y)),
    n_y = length(setdiff(y, x))
  ),
  class = "mismatch_set")
}

#' @export
format.mismatch_set <- function(x,
                                ...,
                                max_diffs = 5,
                                max_lines = 5,
                                width = getOption("width")) {
  width <- width - 6 # allocate space for labels
  n_show <- seq_len(min(max(x$n_x, x$n_y), max_diffs))

  encode <- function(x)
    encodeString(x, quote = '"')
  show_x <-
    str_trunc(paste0(encode(x$x), collapse = ", "), width * max_lines)
  show_y <-
    str_trunc(paste0(encode(x$y), collapse = ", "), width * max_lines)

  if (show_x == "") {
    show_x = " "
  }
  if (show_y == "") {
    show_y = " "
  }

  sidebyside <- paste(c(
    paste0("setdiff(x, y): ",
           str_chunk(as.character(show_x), width)),
    paste0("setdiff(y, x): ",
           str_chunk(as.character(show_y), width))
  ),
  collapse = "\n")

  summary <- paste0(x$n_x,
                    " elements of x are not in y\n",
                    x$n_y,
                    " elements of y are not in x\n")
  paste0(summary, "\n", paste0(sidebyside, collapse = "\n\n"))
}

#' @export
print.mismatch_set <- function(x, ...) {
  cat(format(x, ...), "\n", sep = "")
}
