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
  if (length(x) != length(y)) return(NextMethod())

  # If vectorwise-equal, fallback to default method
  diff <- xor(is.na(x), is.na(y)) | x != y
  diff[is.na(diff)] <- FALSE

  if (!any(diff)) {
    return(NextMethod())
  }

  width <- width - 6 # allocate space for labels
  n_show <- seq_len(min(length(diff), max_diffs))
  show <- which(diff)[n_show]

  encode <- function(x) encodeString(x, quote = '"')
  show_x <- str_trunc(encode(x[show]), width * max_lines)
  show_y <- str_trunc(encode(y[show]), width * max_lines)

  sidebyside <- Map(function(x, y, pos) {
    x <- paste0("x[", pos, "]: ", str_chunk(x, width))
    y <- paste0("y[", pos, "]: ", str_chunk(y, width))

    n <- max(length(x), length(y))
    length(x) <- n
    length(y) <- n

    paste0(x, "\n", y, collapse = "\n\n")
  }, show_x, show_y, show)

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
  lines <- ceiling(nchar(x) / length)
  start <- (seq_len(lines) - 1) * length + 1

  substring(x, start, start + length - 1)
}

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
compare.numeric <- function(x, y, max_diffs = 10, ...) {
  equal <- all.equal(x, y, ...)
  if (isTRUE(equal)) return(comparison())

  # If they're not the same type or length, fallback to default method
  if (!is.integer(x) && !is.numeric(y)) return(comparison(FALSE, equal))
  if (length(x) != length(y)) return(comparison(FALSE, equal))

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

print_out <- function(x, ...) {
  lines <- capture.output(print(x, ...))
  paste0(lines, collapse = "\n")
}

same_type <- function(x, y) {
  if (typeof(x) != typeof(y)) return(FALSE)
  if (!identical(class(x), class(y))) return(FALSE)

  TRUE
}
