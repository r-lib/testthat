#' Locate file in testing directory.
#'
#' This function is designed to work both interatively and during tests,
#' locating files in the \code{tests/testthat} directory
#'
#' @param ... Character vectors giving path component.
#' @return A character vector giving the path. An error will be thrown if
#'   the path doesn't exist.
#' @export
test_path <- function(...) {
  if (in_testing_dir(".")) {
    path <- file.path(...)
    if (length(path) == 0) {
      path <- "."
    }
  } else {
    base <- "tests/testthat"
    if (!file.exists(base)) {
      stop("Can't find `tests/testthat/` in current directory.",
        call. = FALSE)
    }
    path <- file.path(base, ...)
  }

  if (!file.exists(path)) {
    stop("`", path, "` doesn't exist", call. = FALSE)
  }

  path
}

in_testing_dir <- function(path) {
  path <- normalizePath(path)

  if (basename(path) != "testthat")
    return(FALSE)

  parent <- dirname(path)
  basename(parent) %in% c("tests", "tests_x64", "tests_i386")
}
