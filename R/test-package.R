#' Run all tests in a package
#'
#' @description
#' * `test_package()` tests an installed package.
#' * `test_local()` tests a local source package.
#' * `test_check()` checks a package during `R CMD check`.
#'
#' @section Test files:
#' For package code, tests should live in `tests/testthat`.
#'
#' There are four classes of `.R` files that have special behaviour:
#'
#' * Test files start with `test` and are executed in alphabetical order.
#' * Helper files start with `helper` and are executed before tests are
#'   run and from `devtools::load_all()`.
#' * Setup files start with `setup` and are executed before tests, but not
#'   during `devtools::load_all()`.
#' * Teardown files start with `teardown` and are executed after the tests
#'   are run.
#'
#' @section Environments:
#' Each test is run in a clean environment to keep tests as isolated as
#' possible. For package tests, that environment that inherits from the
#' package's namespace environment, so that tests can access internal functions
#' and objects.
#'
#' @section `R CMD check`:
#' To run testthat automatically from `R CMD check`, make sure you have
#' a `tests/testthat.R` that contains:
#'
#' ```
#' library(testthat)
#' library(yourpackage)
#'
#' test_check("yourpackage")
#' ```
#'
#' @param ... Additional arguments passed to [test_dir()]
#' @inheritParams test_dir
#' @return A list of test results.
#' @export
#' @rdname test_package
test_package <- function(package, reporter = check_reporter(), ...) {
  # Ensure that test package returns silently if called recursively - this
  # will occur if test-all.R ends up in the same directory as all the other
  # tests.
  if (is_testing()) {
    return(invisible())
  }

  require(package, character.only = TRUE)
  test_path <- system.file("tests", "testthat", package = package)
  if (test_path == "") {
    stop("No tests found for ", package, call. = FALSE)
  }

  test_dir(test_path, package = package, reporter = reporter, ...)
}

#' @export
#' @rdname test_package
test_check <- function(package, reporter = check_reporter(), ...) {
  require(package, character.only = TRUE)
  test_dir("testthat", package = package, reporter = reporter, ...)
}

#' @export
#' @rdname test_package
test_local <- function(path = ".", reporter = default_reporter(), ...) {
  path <- pkgload::pkg_path(path)
  package <- pkgload::pkg_name(path)

  test_path <- file.path(path, "tests", "testthat")
  if (!dir.exists(test_path)) {
    stop("No tests found for ", package, call. = FALSE)
  }

  if (package != "testthat") {
    pkgload::load_all(path, helpers = FALSE, quiet = TRUE)
  }

  withr::local_envvar(c(NOT_CRAN = "true"))
  test_dir(test_path, package = package, reporter = reporter, ...)
}
