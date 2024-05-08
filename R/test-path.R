#' Locate a file in the testing directory
#'
#' Many tests require some external file (e.g. a `.csv` if you're testing a
#' data import function) but the working directory varies depending on the way
#' that you're running the test (e.g. interactively, with `devtools::test()`,
#' or with `R CMD check`). `test_path()` understands these variations and
#' automatically generates a path relative to `tests/testthat`, regardless of
#' where that directory might reside relative to the current working directory.
#'
#' @param ... Character vectors giving path components.
#' @return A character vector giving the path.
#' @export
#' @examples
#' \dontrun{
#' test_path("foo.csv")
#' test_path("data", "foo.csv")
#' }
test_path <- function(...) {
  if (is_testing() && !isTRUE(getOption("testthat_interactive"))) {
    base <- NULL
  } else if (pkgload::is_loading()) {
    # Probably called from a helper file
    base <- NULL
  } else {
    base <- "tests/testthat"

    if (!dir.exists(base)) {
      cli::cli_abort("Can't find {.path {base}}.")
    }
  }

  file_path(base, ...)
}

file_path <- function(...) {
  paths <- compact(list2(...))
  if (length(paths) == 0) {
    "."
  } else {
    do.call(file.path, paths)
  }
}
