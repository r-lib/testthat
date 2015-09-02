#' Test package examples
#'
#' These helper functions make it easier to test the examples in a package.
#' Each example counts as one test, and it succeeds if the code runs without
#' an error.
#'
#' @param path For \code{test_examples}, path to directory containing Rd files.
#'   For \code{test_example}, path to a single Rd file. Remember the working
#'   directory for tests is \code{tests/testthat}.
#' @export
test_examples <- function(path = "../../man") {
  man <- dir(path, "\\.Rd$", full.names = TRUE)
  lapply(man, test_example)
}

#' @export
#' @rdname test_examples
test_example <- function(path) {
  ex_path <- file.path(tempdir(), paste0(tools::file_path_sans_ext(basename(path)), ".R"))
  tools::Rd2ex(path, ex_path)
  if (!file.exists(ex_path)) return()

  env <- new.env(parent = globalenv())

  ok <- test_code(path, parse(ex_path), env = globalenv())
  if (ok) succeed(path)

  invisible()
}

