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

#' Run all tests in an installed package to report test code coverage
#'
#' Run \code{test_package} silently, just looking for function calls, then
#' determine what proportion of functions in the tested package were tested. Not
#' as good as tested every code branch, but light-weight to implement, and runs
#' reasonably quickly.
#'
#' \code{coverage} may be better suited to inclusion in devtools. It guesses that the current working directory is the name of the package (very commonly true in package development), and uses that name to run the tests installed in that envir
#'
#' @param package package name
#' @inheritParams test_dir
#' @return a data frame of the summary of test results
#' @export
#' @examples
#' \dontrun{test_package_cover("testthat")}
test_package_coverage <- function(package, reporter = "silent", split = FALSE, filter = NULL) {
  # Ensure that test package returns silently if called recursively - this
  # will occur if test-all.R ends up in the same directory as all the other
  # tests.
  if (env_test$in_test) return(invisible())
  env_test$in_test <- TRUE
  on.exit(env_test$in_test <- FALSE)

  test_path <- system.file("tests", package = package)
  if (test_path == "") {
    stop("No tests found for ", package, " in ", test_path, call. = FALSE)
  }

  # If testthat subdir exists, use that
  test_path2 <- file.path(test_path, "testthat")
  if (file.exists(test_path2)) test_path <- test_path2

  .coverage(package = package, test_path = test_path, reporter = reporter, split = split, filter = filter)
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
#' @rdname test_package_coverage
test_check_coverage <- function(package, reporter = "silent", split = FALSE, filter = NULL) {
  require(package, character.only = TRUE)

  test_path <- "testthat"
  if (!file_test('-d', test_path)) {
    stop("No tests found for ", package, " in ", test_path, call. = FALSE)
  }

  .coverage(package = package, test_path = test_path, reporter = reporter, split = split, filter = filter)

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

.coverage <- function(package, test_path, reporter, split, filter = NULL) {
  env <- test_pkg_env(package) # the parent is the icd9 package namespace?
  pkgns <- getNamespace(package)
  with_top_env(env, {
    funs <- sort(lsf(package)) # see function in util which lists contents of a package

    tmp_out  <- tempfile()

    # trace prints output directly to stderr, so difficult to make quiet:
    tmp_tracing <- file(tempfile(), open="wt")
    sink(file = tmp_tracing, type = "message")
    trace(funs, where = pkgns)
    sink(file = NULL, type = "message")
    close(tmp_tracing)

    # use sink instead of capture.output so we can 'tee' when not silent, to
    # monitor progress. Otherwise zero output, and difficult to know if hung.
    sink(file = tmp_out, split = split, type = "output")
    df <- test_dir(test_path, reporter = reporter, env = env, filter = filter)
    sink(file = NULL, type = "output")

    # untrace prints output directly to stderr, so difficult to make quiet:
    tmp_tracing <- file(tempfile(), open="wt")
    sink(file = tmp_tracing, type = "message")
    untrace(funs, where = pkgns)
    sink(file = NULL, type = "message")
    close(tmp_tracing)

    everytestedfun <- getTestedFunctions(readLines(tmp_out))

    coverage <- list()
    cov <- funs %in% everytestedfun
    coverage$tested <- funs[cov]
    coverage$untested <- funs[!cov]
    coverage$coverage <- length(coverage$tested) / length(funs)

  })

  coverage
}


env_test <- new.env(parent = emptyenv())
env_test$in_test <- FALSE
