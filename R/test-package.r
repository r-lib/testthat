test_pkg_env <- function(package) {
  env <- new.env(parent = getNamespace(package))
  # Supress warning messages from S4
  env$.packageName <- package
  env
}

with_top_env <- function(env, code) {
  old <- options(topLevelEnvironment = env)
  on.exit(options(old), add = TRUE)

  code
}

#' Run all tests in an installed package
#'
#' Test are run in an environment that inherits from the package's namespace
#' environment, so that tests can access non-exported functions and variables.
#' Tests should be placed in either \code{inst/tests}, or (better)
#' \code{tests/testthat}.
#'
#' @section R CMD check:
#' Use \code{test_package} to test an installed package, or in
#' \code{tests/test-all.R}if you're using the older \code{inst/tests}
#' convention.
#'
#' If your tests live in \code{tests/testthat} (preferred) use \code{test_check}
#' in \code{tests/testthat.R}.  You still use \code{test_package} when testing
#' the installed package.
#'
#' @param package package name
#' @inheritParams test_dir
#' @return a data frame of the summary of test results
#' @export
#' @examples
#' \dontrun{test_package("testthat")}
test_package <- function(package, filter = NULL, reporter = "summary") {
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
  if (file.exists(test_path2)) test_path <- test_path2

  reporter <- find_reporter(reporter)

  env <- test_pkg_env(package)
  with_top_env(env, {
    df <- test_dir(test_path, reporter = reporter, env = env, filter = filter)
  })

  if (reporter$failed) {
    stop("Test failures", call. = FALSE)
  }
  invisible(df)
}

#' Run all tests in an installed package to check test code coverage
#'
#' Run \code{test_package} silently, just looking for function calls, then
#' determine what proportion of functions in the tested package were tested.
#'
#' @param package package name
#' @inheritParams test_dir
#' @return a data frame of the summary of test results
#' @export
#' @examples
#' \dontrun{test_package_cover("testthat")}
test_coverage <- function(package, filter = NULL) {
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
  if (file.exists(test_path2)) test_path <- test_path2

  env <- test_pkg_env(package) # the parent is the icd9 package namespace?
  pkgns <- getNamespace(package)
  with_top_env(env, {
    funs <- sort(lsf(package)) # see function in util which lists contents of a package
    trace(funs, where = pkgns)

    trace_output <- capture.output(
      df <- test_dir(test_path, reporter = SilentReporter(), env = env, filter = filter)
    )

    untrace(funs, where = pkgns) # ? set environment with where=

    everytestedfun <- getTestedFunctions(trace_output)

    coverage <- list()
    cov <- funs %in% everytestedfun
    coverage$tested <- funs[cov]
    coverage$untested <- funs[!cov]
    coverage$coverage <- length(coverage$tested) / length(funs)
  })

  coverage
}

getTestedFunctions <- function(trace_output) {
  unique(
    lapply(trace_output,
           function(x) unlist(
             regmatches(
               x = x,
               m = regexec(
                 pattern = "^.* ([[:graph:]]*?)\\(.*",
                 text = x)
             )
           )[-1]
    )
  )
}


#' @export
#' @rdname test_package
test_check <- function(package, filter = NULL, reporter = "summary") {
  require(package, character.only = TRUE)

  test_path <- "testthat"
  if (!file_test('-d', test_path)) {
    stop("No tests found for ", package, call. = FALSE)
  }

  reporter <- find_reporter(reporter)
  env <- test_pkg_env(package)
  with_top_env(env, {
    df <- test_dir(test_path, reporter = reporter, env = env, filter = filter)
  })

  if (reporter$failed) {
    stop("Test failures", call. = FALSE)
  }
  invisible(df)
}


env_test <- new.env(parent = emptyenv())
env_test$in_test <- FALSE
