#' Run all tests in an installed package
#'
#' Test are run in an environment that inherits from the package environment
#' so that tests can access non-exported functions and variables. Tests should
#' be placed in either \code{inst/tests}, or (better) \code{tests/testhat}.
#'
#' @param package package name
#' @inheritParams test_dir
#' @export
#' @examples
#' \dontrun{test_package("testthat")}
test_package <- function(package, filter = NULL, reporter = "summary") {
  test_path <- system.file("tests", package = package)

  # If testthat subdir exists, use that
  test_path2 <- file.path(test_path, "testthat")
  if (file.exists(test_path2)) test_path <- test_path2

  reporter <- find_reporter(reporter)

  env <- new.env(parent = getNamespace(package))
  test_dir(test_path, reporter = reporter, env = env, filter = filter)

  if (reporter$failed) {
    stop("Test failures", call. = FALSE)
  }
  invisible()
}
