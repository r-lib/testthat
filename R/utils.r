# Find expression that created a variable
find_expr <- function(name, env = parent.frame()) {
  subs <- do.call("substitute", list(as.name(name), env))
  paste0(deparse(subs, width.cutoff = 500), collapse = "\n")
}


# A version of grepl that's vectorised along pattern, not x
grepl2 <- function(pattern, x, ...) {
  stopifnot(length(x) == 1)

  vapply(pattern, grepl, x, ..., FUN.VALUE = logical(1), USE.NAMES = FALSE)
}


#' @title list all functions in a package
#' @param pkg character string containing package name
#' @return character vector of functions in given package
lsf <- function(pkg) {
  envirName <- paste("package", pkg, sep = ":")
  everything <- ls(pos = envirName, all.names = TRUE)
  funcs <- c()
  for (e in everything) {
    if (is.function(get(e, envir = as.environment(envirName), inherits = F)))
      funcs <- append(funcs, e)
  }
  funcs
}
