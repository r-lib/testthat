#' Run all tests in an installed package
#' 
#' @param package package name
#' @export
#' @examples
#' test_package("testthat")
test_package <- function(package) {
  test_path <- system.file("tests", package = package)
  test_dir(test_path, StopReporter)
}