#' Determine testing status
#'
#' Use `is_testing()` to determine if code is being run as part of a test and
#' `testing_package()` to retrieve the name of the package being tested. You
#' can also check the underlying env var directly
#' `identical(Sys.getenv("TESTTHAT"), "true")` to avoid creating a run-time
#' dependency on testthat.
#'
#'
#' @export
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
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
    new.env(parent = globalenv())
  } else {
    env_clone(asNamespace(package))
  }
}
