#' Run all tests in directory or package
#'
#' @description
#' Use `test_dir()` for a collection of tests in a directory; use
#' `test_package()` interactively at the console, and `test_check()`
#' inside of `R CMD check`.
#'
#' In your own code, you can use `is_testing()` to determine if code is being
#' run as part of a test. You can also check the underlying env var directly
#' `identical(Sys.getenv("TESTTHAT"), "true")` to avoid creating a run-time
#' dependency on testthat.
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
#' @param path path to tests
#' @param package   package name
#' @param filter If not `NULL`, only tests with file names matching this
#'   regular expression will be executed.  Matching will take on the file
#'   name after it has been stripped of `"test-"` and `".R"`.
#' @param ... Additional arguments passed to [grepl()] to control filtering.
#' @param stop_on_failure If `TRUE`, throw an error if any tests fail.
#' @param stop_on_warning If `TRUE`, throw an error if any tests generate
#'   warnings.
#' @inheritParams test_file
#' @return The results of the reporter function on all test results.
#' @return The results as a "testthat_results" (list)
#' @export
#' @examples
#' \dontrun{test_package("testthat")}
test_dir <- function(path,
                     filter = NULL,
                     reporter = default_reporter(),
                     env = test_env(), ...,
                     encoding = "unknown",
                     load_helpers = TRUE,
                     stop_on_failure = FALSE,
                     stop_on_warning = FALSE,
                     wrap = TRUE
                     ) {
  if (!missing(encoding) && !identical(encoding, "UTF-8")) {
    warning("`encoding` is deprecated; all files now assumed to be UTF-8", call. = FALSE)
  }

  if (load_helpers) {
    source_test_helpers(path, env)
  }
  source_test_setup(path, env)
  on.exit(source_test_teardown(path, env), add = TRUE)

  withr::local_envvar(list(R_TESTS = "", TESTTHAT = "true"))
  withr::local_options(list(oldie_verbose_retirement = TRUE))

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
                         reporter = default_reporter(),
                         ...,
                         stop_on_failure = TRUE,
                         stop_on_warning = FALSE
                         ) {
  library(testthat)

  # Ensure that test package returns silently if called recursively - this
  # will occur if test-all.R ends up in the same directory as all the other
  # tests.
  if (env_test$in_test)
    return(invisible())

  env_test$in_test <- TRUE
  env_test$package <- package
  on.exit({
    env_test$in_test <- FALSE
    env_test$package <- NULL
  })

  test_path <- system.file("tests", package = package)
  if (test_path == "")
    stop("No tests found for ", package, call. = FALSE)

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

  test_package_dir(
    package = package,
    test_path = test_path,
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
                       reporter = getOption("testthat.default_check_reporter", "check"),
                       ...,
                       stop_on_failure = TRUE,
                       stop_on_warning = FALSE,
                       wrap = TRUE
  ) {
  library(testthat)
  require(package, character.only = TRUE)

  env_test$in_test <- TRUE
  env_test$package <- package
  on.exit({
    env_test$in_test <- FALSE
    env_test$package <- NULL
  })

  test_path <- "testthat"
  if (!utils::file_test('-d', test_path)) {
    stop("No tests found for ", package, call. = FALSE)
  }

  test_package_dir(
    package = package,
    test_path = test_path,
    filter = filter,
    reporter = reporter,
    ...,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning,
    wrap = wrap
  )
}

test_package_dir <- function(package, test_path, filter, reporter, ...,
                             stop_on_failure = TRUE,
                             stop_on_warning = FALSE,
                             wrap = TRUE) {
  env <- test_pkg_env(package)
  withr::local_options(list(topLevelEnvironment = env))

  test_dir(
    path = test_path,
    reporter = reporter,
    env = env,
    filter = filter,
    ...,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning,
    wrap = wrap
  )
}

#' @export
#' @rdname test_dir
is_testing <- function() {
  identical(Sys.getenv("TESTTHAT"), "true")
}


# Environment utils -------------------------------------------------------

env_test <- new.env(parent = emptyenv())
env_test$in_test <- FALSE
env_test$package <- NULL

test_pkg_env <- function(package) {
  list2env(
    as.list(getNamespace(package), all.names = TRUE),
    parent = parent.env(getNamespace(package))
  )
}
