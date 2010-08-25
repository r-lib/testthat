#' Run all tests in an installed package
#' 
#' Test are run in an environment that inherits from the package environment
#' so that tests can access non-exported functions and variables.
#'
#' @param package package name
#' @param reporter reporter to use
#' @export
#' @examples
#' \dontrun{test_package("testthat")}
test_package <- function(package, reporter = "summary") {
  test_path <- system.file("tests", package = package)
  reporter <- find_reporter(reporter)
  
  env <- new.env(parent = getNamespace(package))
  test_dir(test_path, reporter = reporter, env)
  
  if (reporter$failed) {
    stop("Test failures", call. = FALSE)
  }
  invisible()
}