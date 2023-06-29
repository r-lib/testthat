#' Determine testing status
#'
#' @description
#' These functions help you determine if you code is running in a particular
#' testing context:
#'
#' * `is_testing()` is `TRUE` inside a test.
#' * `is_snapshot()` is `TRUE` inside a snapshot test
#' * `is_checking()` is `TRUE` inside of `R CMD check` (i.e. by [test_check()]).
#' * `is_parallel()` is `TRUE` if the tests are run in parallel.
#' * `testing_package()` gives name of the package being tested.
#'
#' A common use of these functions is to compute a default value for a `quiet`
#' argument with `is_testing() && !is_snapshot()`. In this case, you'll
#' want to avoid an run-time dependency on testthat, in which case you should
#' just copy the implementation of these functions into a `utils.R` or similar.
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
is_checking <- function() {
  identical(Sys.getenv("TESTTHAT_IS_CHECKING"), "true")
}

#' @export
#' @rdname is_testing
is_snapshot <- function() {
  identical(Sys.getenv("TESTTHAT_IS_SNAPSHOT"), "true")
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
    env(globalenv())
  } else {
    # Must clone environment so that during R CMD check, it's not locked
    # preventing creation of S4 classes
    env_clone(asNamespace(package))
  }
}
