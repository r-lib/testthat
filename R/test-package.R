test_pkg_env <- function(package) {
  list2env(as.list(getNamespace(package), all.names = TRUE),
    parent = parent.env(getNamespace(package)))
}

with_top_env <- function(env, code) {
  old <- options(topLevelEnvironment = env)
  on.exit(options(old), add = TRUE)

  code
}

#' Run all tests in an installed package.
#'
#' Test are run in an environment that inherits from the package's namespace
#' environment, so that tests can access non-exported functions and variables.
#' Tests should be placed in \code{tests/testthat}. Use \code{test_check} with
#' \code{R CMD check} and \code{test_package} interactively at the console.
#'
#' @section R CMD check:
#' Create \code{tests/testthat.R} that contains:
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
test_package <- function(package, filter = NULL, reporter = "summary", ...) {
  library(testthat)

  # Ensure that test package returns silently if called recursively - this
  # will occur if test-all.R ends up in the same directory as all the other
  # tests.
  if (env_test$in_test) return(invisible())
  env_test$in_test <- TRUE
  on.exit(env_test$in_test <- FALSE)

  test_path <- system.file("tests", package = package)
  if (test_path == "") stop("No tests found for ", package, call. = FALSE)

  # If testthat subdir exists, use that
  test_path2 <- file.path(test_path, "testthat")
  if (file.exists(test_path2)) {
    test_path <- test_path2
  } else {
    warning("Placing tests in `inst/tests/` is deprecated. ",
      "Please use `tests/testthat/` instead", call. = FALSE)
  }

  run_tests(package, test_path, filter, reporter, ...)
}


run_tests <- function(package, test_path, filter, reporter, ...)
{
  reporter <- find_reporter(reporter)
  env <- test_pkg_env(package)
  res <- with_top_env(env, {
    test_dir(test_path, reporter = reporter, env = env, filter = filter, ...)
  })

  if (!all_passed(res)) {
    stop("Test failures", call. = FALSE)
  }

  invisible(res)
}

#' @inheritParams test_package
#' @export
#' @rdname test_package
test_check <- function(package, filter = NULL, reporter = "check", ...) {
  library(testthat)
  require(package, character.only = TRUE)

  test_path <- "testthat"
  if (!utils::file_test('-d', test_path)) {
    stop("No tests found for ", package, call. = FALSE)
  }

  run_tests(package, test_path, filter, reporter, ...)
}


env_test <- new.env(parent = emptyenv())
env_test$in_test <- FALSE
