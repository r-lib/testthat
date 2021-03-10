#' Determine testing status
#'
#' @description
#' * `is_testing()` determine if code is being run as part of a test
#' * `is_parallel()` if the test is being run in parallel.
#' * `testing_package()` gives name of the package being tested.
#'
#' These are thin wrappers that retrieve the values of environment variables.
#' To avoid creating a run-time dependency on testthat, you can inline the
#' source of these functions directly into your package.
#'
#' @export
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
}

#' @export
#' @rdname is_testing
is_parallel <- function() {
  identical(Sys.getenv("TESTTHAT_IS_PARALLEL"), "true")
}

#' @export
#' @rdname is_testing
testing_package <- function() {
  Sys.getenv("TESTTHAT_PKG")
}

#' Generate default testing environment.
#'
#' We use a new environment which inherits from [globalenv()] or a package
#' namespace. In an ideal world, we'd avoid putting the global environment on
#' the search path for tests, but it's not currently possible without losing
#' the ability to load packages in tests.
#'
#' @keywords internal
#' @export
test_env <- function(package = NULL) {
  if (is.null(package)) {
    child_env(globalenv())
  } else {
    # Must clone environment so that during R CMD check, it's not locked
    # preventing creation of S4 classes
    env_clone(asNamespace(package))
  }
}
