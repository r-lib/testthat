#' Retrieve paths to built-in example test files
#'
#' `testthat_examples()` retrieves path to directory of test files,
#' `testthat_example()` retrieves path to a single test file.
#'
#' @keywords internal
#' @param filename Name of test file
#' @export
#' @examples
#' dir(testthat_examples())
#' testthat_example("success")
testthat_examples <- function() {
  system.file("examples", package = "testthat")
}

#' @export
#' @rdname testthat_examples
testthat_example <- function(filename) {
  system.file(
    "examples", paste0("test-", filename, ".R"),
    package = "testthat",
    mustWork = TRUE
  )
}
