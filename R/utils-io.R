readLines <- function(...) stop("Use read_lines!")
writeLines <- function(...) stop("Use write_lines!")

read_lines <- function(path, n = -1L, encoding = "UTF-8") {
  base::readLines(path, n = n, encoding = encoding, warn = FALSE)
}

write_lines <- function(text, path) {
  base::writeLines(enc2utf8(text), path, useBytes = TRUE)
}
