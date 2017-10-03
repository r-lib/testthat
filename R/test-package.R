#' Run all tests in an installed package.
#'
#' Test are run in an environment that inherits from the package's namespace
#' environment, so that tests can access non-exported functions and variables.
#' Tests should be placed in `tests/testthat`. Use `test_check()` with
#' `R CMD check` and `test_package()` interactively at the console.
#'
#' @section R CMD check:
#' Create `tests/testthat.R` that contains:
#'
#' \preformatted{
#' library(testthat)
#' library(yourpackage)
#'
#' test_check("yourpackage")
#' }
#'
#' @param package   package name
#' @inheritParams test_dir
#' @return the results as a "testthat_results" (list)
#' @export
#' @examples
#' \dontrun{test_package("testthat")}
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

#' @inheritParams test_package
#' @export
#' @rdname test_package
test_check <- function(package,
                       filter = NULL,
                       reporter = getOption("testthat.default_check_reporter", "check"),
                       ...,
                       stop_on_failure = TRUE,
                       stop_on_warning = FALSE
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
    stop_on_warning = stop_on_warning
  )
}

test_package_dir <- function(package, test_path, filter, reporter, ...,
                             stop_on_failure = TRUE,
                             stop_on_warning = FALSE) {
  env <- test_pkg_env(package)
  old <- options(topLevelEnvironment = env)
  on.exit(options(old), add = TRUE)

  test_dir(
    path = test_path,
    reporter = reporter,
    env = env,
    filter = filter,
    ...,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning
  )
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

with_top_env <- function(env, code) {
  old <- options(topLevelEnvironment = env)
  on.exit(options(old), add = TRUE)

  code
}
