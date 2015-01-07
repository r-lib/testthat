#' Provide human-readable comparison of two objects
#'
#' \code{compare} is similar to \code{\link[base]{all.equal}()}, but is
#' tailored for unit test output. In fact, the default method is to just
#' use \code{all.equal}.
#'
#' @export
#' @param x,y Objects to compare
#' @param ... Additional arguments used to control specifics of comparison
compare <- function(x, y, ...) {
  UseMethod("compare", x)
}

comparison <- function(equal = TRUE, message = "Equal") {
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

#' @param max_strings Maximum number of differences to show
#' @param max_lines Maximum number of lines to show from each difference
#' @param width Width of output device
#' @rdname compare
#' @export
#' @examples
#' x <- c("abc", "def", "jih")
#' compare(x, x)
#'
#' y <- paste0(x, "y")
#' compare(x, y)
#'
#' x <- "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cursus
#'  tincidunt auctor. Vestibulum ac metus bibendum, facilisis nisi non, pulvinar
#'  dolor. Donec pretium iaculis nulla, ut interdum sapien ultricies a. "
#' y <- "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis cursus
#'  tincidunt auctor. Vestibulum ac metus1 bibendum, facilisis nisi non, pulvinar
#'  dolor. Donec pretium iaculis nulla, ut interdum sapien ultricies a. "
#' compare(x, y)
compare.character <- function(x, y, ..., max_strings = 5, max_lines = 5,
                              width = getOption("width")) {
  if (identical(x, y)) return(comparison())

  # If they're not the same type or length, fallback to default method
  if (!same_type(x, y)) return(NextMethod())
  if (length(x) != length(y)) return(NextMethod())

  # If vectorwise-equal, fallback to default method
  diff <- xor(is.na(x), is.na(y)) | x != y
  diff[is.na(diff)] <- FALSE

  if (!any(diff)) {
    return(NextMethod())
  }

  width <- width - 6 # allocate space for labels
  n_show <- seq_len(min(length(diff), max_strings))
  show <- diff[n_show]

  encode <- function(x) encodeString(x, quote = '"')
  show_x <- str_chunk(str_trunc(encode(x[show]), max_lines * width), width)
  show_y <- str_chunk(str_trunc(encode(y[show]), max_lines * width), width)

  names <- which(diff)[n_show]

  sidebyside <- Map(function(x, y, name) {
    x <- paste0("x[", name, "]: ", x)
    y <- paste0("y[", name, "]: ", y)

    n <- max(length(x), length(y))
    length(x) <- n
    length(y) <- n

    paste0(as.vector(rbind(x, "\n", y, "\n\n")), collapse = "")
  }, show_x, show_y, names)

  msg <- paste0(sum(diff), " string mismatches:\n",
    paste0(sidebyside, collapse = "\n\n"))
  comparison(FALSE, msg)
}

str_trunc <- function(x, length) {
  too_long <- nchar(x) > length

  x[too_long] <- paste0(substr(x[too_long], 1, length - 3), "...")
  x
}
str_chunk <- function(x, length) {
  lapply(x, str_chunk_1, length)
}
str_chunk_1 <- function(x, length) {
  lines <- ceiling(nchar(x) / length)
  start <- (seq_len(lines) - 1) * length + 1

  substring(x, start, start + length - 1)
}


same_type <- function(x, y) {
  if (typeof(x) != typeof(y)) return(FALSE)
  if (!identical(class(x), class(y))) return(FALSE)

  TRUE
}
