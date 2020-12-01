#' Run all tests in a package
#'
#' @description
#' * `test_local()` tests a local source package.
#' * `test_package()` tests an installed package.
#' * `test_check()` checks a package during `R CMD check`.
#'
#' Tests live in `tests/testthat`.
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
#' @inherit test_dir return params
#' @inheritSection test_dir Special files
#' @inheritSection test_dir Environments
#' @param ... Additional arguments passed to [test_dir()]
#' @export
#' @rdname test_package
test_package <- function(package, reporter = check_reporter(), ...) {
  test_path <- system.file("tests", "testthat", package = package)
  if (test_path == "") {
    inform(paste0("No installed testthat tests found for ", package))
    return(invisible())
  }

  test_dir(
    test_path,
    package = package,
    reporter = reporter,
    ...,
    load_package = "installed"
  )
}

#' @export
#' @rdname test_package
test_check <- function(package, reporter = check_reporter(), ...) {
  require(package, character.only = TRUE)
  test_dir(
    "testthat",
    package = package,
    reporter = reporter,
    ...,
    load_package = "installed"
  )
}

#' @export
#' @rdname test_package
test_local <- function(path = ".", reporter = NULL, ...) {
  package <- pkgload::pkg_name(path)
  test_path <- file.path(pkgload::pkg_path(path), "tests", "testthat")

  withr::local_envvar(NOT_CRAN = "true")
  test_dir(
    test_path,
    package = package,
    reporter = reporter,
    ...,
    load_package = if (package != "testthat") "source" else "none"
  )
}
