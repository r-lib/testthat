`%||%` <- function(a, b) if (is.null(a)) b else a

starts_with <- function(string, prefix) {
  substr(string, 1, nchar(prefix)) == prefix
}

is_directory <- function(x) file.info(x)$isdir
is_readable <- function(x) file.access(x, 4) == 0

null <- function(...) invisible()

klass <- function(x) paste(class(x), collapse = "/")
