#' Locate file in testing directory.
#'
#' This function is designed to work both interactively and during tests,
#' locating files in the `tests/testthat` directory
#'
#' @param ... Character vectors giving path component.
#' @return A character vector giving the path.
#' @export
test_path <- function(...) {
  if (is_testing() && !isTRUE(getOption("testthat_interactive"))) {
    if (missing(...)) {
      "."
    } else {
      file.path(...)
    }
  } else {
    base <- "tests/testthat"
    if (!dir.exists(base)) {
      abort("Can't find `tests/testthat/` in current directory.")
    }
    file.path(base, ...)
  }
}
