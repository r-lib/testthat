#' Run all tests in directory or package
#'
#' @description
#' * `test_package()` tests an installed package.
#' * `test_local()` tests a local source package.
#' * `test_check()` checks a package during `R CMD check`.
#'
#' These are all powered by the lower level `test_dir()`, which runs all test
#' files in a directory.
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
#' @param path Path to directory containing tests.
#' @param package Name of installed package.
#' @param filter If not `NULL`, only tests with file names matching this
#'   regular expression will be executed. Matching be performed on the file
#'   name after it has been stripped of `"test-"` and `".R"`.
#' @param ... Additional arguments passed to [grepl()] to control filtering.
#' @param stop_on_failure If `TRUE`, throw an error if any tests fail.
#'
#'   For historical reasons, the default value of `stop_on_failure` is `TRUE`
#'   for  `test_package()` and `test_check()` but `FALSE` for `test_dir()`, so
#'   if you're calling `test_dir()` you may want to consider explicitly setting
#'   `stop_on_failure = TRUE`.
#' @param stop_on_warning If `TRUE`, throw an error if any tests generate
#'   warnings.
#' @inheritParams test_file
#' @return A list of test results.
#' @export
#' @examples
#' test_dir(testthat_examples(), reporter = "summary")
#' test_dir(testthat_examples(), reporter = "minimal")
test_dir <- function(path,
                     filter = NULL,
                     reporter = default_reporter(),
                     env = NULL,
                     ...,
                     encoding = "unknown",
                     load_helpers = TRUE,
                     stop_on_failure = FALSE,
                     stop_on_warning = FALSE,
                     wrap = TRUE,
                     package = NULL
                     ) {
  if (!missing(encoding) && !identical(encoding, "UTF-8")) {
    warning("`encoding` is deprecated; all files now assumed to be UTF-8", call. = FALSE)
  }

  local_test_directory(path, package = package)

  if (is.null(env)) {
    if (is.null(package)) {
      env <- test_env()
    } else {
      env <- env_clone(asNamespace(package))
    }
    withr::local_options(list(topLevelEnvironment = env))
  }

  if (load_helpers) {
    source_test_helpers(path, env)
  }
  source_test_setup(path, env)
  on.exit(source_test_teardown(path, env), add = TRUE)

  paths <- find_test_scripts(path, filter, ...)

  test_files(
    paths,
    reporter = reporter,
    env = env,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning,
    wrap = wrap
  )
}

#' @export
#' @rdname test_dir
test_package <- function(package,
                         filter = NULL,
                         reporter = check_reporter(),
                         ...,
                         stop_on_failure = TRUE,
                         stop_on_warning = FALSE) {
  library(testthat)

  # Ensure that test package returns silently if called recursively - this
  # will occur if test-all.R ends up in the same directory as all the other
  # tests.
  if (is_testing()) {
    return(invisible())
  }

  test_path <- system.file("tests", package = package)
  if (test_path == "") {
    stop("No tests found for ", package, call. = FALSE)
  }

  # If testthat subdir exists, use that
  test_path2 <- file.path(test_path, "testthat")
  if (file.exists(test_path2)) {
    test_path <- test_path2
  } else {
    warning(
      "Placing tests in `inst/tests` is deprecated. ",
      "Please use `tests/testthat` instead", call. = FALSE
    )
  }

  test_dir(
    test_path,
    package = package,
    filter = filter,
    reporter = reporter,
    ...,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning
  )
}

#' @export
#' @rdname test_dir
test_check <- function(package,
                       filter = NULL,
                       reporter = check_reporter(),
                       ...,
                       stop_on_failure = TRUE,
                       stop_on_warning = FALSE,
                       wrap = TRUE) {
  library(testthat)
  require(package, character.only = TRUE)

  test_path <- "testthat"
  if (!utils::file_test("-d", test_path)) {
    stop("No tests found for ", package, call. = FALSE)
  }

  test_dir(
    test_path,
    package = package,
    filter = filter,
    reporter = reporter,
    ...,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning,
    wrap = wrap
  )
}

#' @export
#' @rdname test_dir
test_local <- function(path = ".",
                       filter = NULL,
                       reporter = default_reporter(),
                       ...,
                       stop_on_failure = TRUE,
                       stop_on_warning = FALSE
                       ) {
  path <- pkgload::pkg_path(path)
  package <- pkgload::pkg_name(path)

  test_path <- file.path(path, "tests", "testthat")
  if (!dir.exists(test_path)) {
    stop("No tests found for ", package, call. = FALSE)
  }

  library(testthat)
  if (package != "testthat") {
    pkgload::load_all(path, helpers = FALSE, quiet = TRUE)
  }

  withr::local_envvar(c(NOT_CRAN = "true"))
  test_dir(
    test_path,
    package = package,
    filter = filter,
    reporter = reporter,
    ...,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning
  )
}

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
