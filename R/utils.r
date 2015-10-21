`%||%` <- function(a, b) if (is.null(a)) b else a

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

starts_with <- function(string, prefix) {
  substr(string, 1, nchar(prefix)) == prefix
}

is_directory <- function(x) file.info(x)$isdir
is_readable <- function(x) file.access(x, 4) == 0

is.error <- function(x) inherits(x, "error")

is.skip <- function(x) inherits(x, "skip")

#' Skip a test.
#'
#' This function allows you to skip a test if it's not currently available.
#' This will produce an informative message, but will not cause the test
#' suite to fail.
#'
#' @section Helpers:
#' \code{skip_on_cran()} skips tests on CRAN, using the \code{NOT_CRAN}
#' environment variable set by devtools.
#'
#' \code{skip_on_travis()} skips tests on travis by inspecting the
#' \code{TRAVIS} environment variable.
#'
#' \code{skip_on_appveyor()} skips tests on appveyor by inspecting the
#' \code{APPVEYOR} environment variable.
#'
#' \code{skip_if_not_installed()} skips a tests if a package is not installed
#' (useful for suggested packages).
#'
#' @param message A message describing why the test was skipped.
#' @export
#' @examples
#' if (FALSE) skip("No internet connection")
skip <- function(message) {
  cond <- structure(list(message = message), class = c("skip", "condition"))
  stop(cond)
}

#' @export
#' @param pkg Name of package to check for
#' @rdname skip
skip_if_not_installed <- function(pkg) {
  if (requireNamespace(pkg, quietly = TRUE)) return(invisible(TRUE))

  skip(paste0(pkg, " not installed"))
}

#' @export
#' @rdname skip
skip_on_cran <- function() {
  if (identical(Sys.getenv("NOT_CRAN"), "true")) return(invisible(TRUE))

  skip("On CRAN")
}

#' @export
#' @param os Character vector of system names. Supported values are
#'   \code{"windows"}, \code{"mac"}, \code{"linux"} and \code{"solaris"}.
#' @rdname skip
skip_on_os <- function(os) {
  os <- match.arg(os, c("windows", "mac", "linux", "solaris"),
    several.ok = TRUE)
  sysname <- tolower(Sys.info()[["sysname"]])

  switch(sysname,
    windows = if ("windows" %in% os) skip("On windows"),
    darwin =  if ("mac" %in% os) skip("On Mac"),
    linux =   if ("linux" %in% os) skip("On Linux"),
    sunos =   if ("solaris" %in% os) skip("On Solaris")
  )

  invisible(TRUE)
}

#' @export
#' @rdname skip
skip_on_travis <- function() {
  if (!identical(Sys.getenv("TRAVIS"), "true")) return(invisible(TRUE))

  skip("On Travis")
}

#' @export
#' @rdname skip
skip_on_appveyor <- function() {
  if (!identical(Sys.getenv("APPVEYOR"), "True")) return()

  skip("On Appveyor")
}
