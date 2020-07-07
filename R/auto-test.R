#' Watches code and tests for changes, rerunning tests as appropriate.
#'
#' The idea behind `auto_test()` is that you just leave it running while
#' you develop your code.  Everytime you save a file it will be automatically
#' tested and you can easily see if your changes have caused any test
#'  failures.
#'
#' The current strategy for rerunning tests is as follows:
#'
#' - if any code has changed, then those files are reloaded and all tests
#'   rerun
#' - otherwise, each new or modified test is run
#'
#' In the future, `auto_test()` might implement one of the following more
#' intelligent alternatives:
#'
#' - Use codetools to build up dependency tree and then rerun tests only
#'   when a dependency changes.
#' - Mimic ruby's autotest and rerun only failing tests until they pass,
#'   and then rerun all tests.
#
#' @seealso [auto_test_package()]
#' @export
#' @param code_path path to directory containing code
#' @param test_path path to directory containing tests
#' @param reporter test reporter to use
#' @param env environment in which to execute test suite.
#' @param hash Passed on to [watch()]. When FALSE, uses less accurate
#'   modification time stamps, but those are faster for large files.
#' @keywords debugging
auto_test <- function(code_path, test_path, reporter = default_reporter(),
                      env = test_env(),
                      hash = TRUE) {
  reporter <- find_reporter(reporter)
  code_path <- normalizePath(code_path)
  test_path <- normalizePath(test_path)

  # Start by loading all code and running all tests
  source_dir(code_path, env = env)
  test_dir(test_path, env = env, reporter = reporter$clone(deep = TRUE))

  # Next set up watcher to monitor changes
  watcher <- function(added, deleted, modified) {
    changed <- normalizePath(c(added, modified))

    tests <- changed[starts_with(changed, test_path)]
    code <- changed[starts_with(changed, code_path)]

    if (length(code) > 0) {
      # Reload code and rerun all tests
      cat("Changed code: ", paste0(basename(code), collapse = ", "), "\n")
      cat("Rerunning all tests\n")
      source_dir(code_path, env = env)
      test_dir(test_path, env = env, reporter = reporter$clone(deep = TRUE))
    } else if (length(tests) > 0) {
      # If test changes, rerun just that test
      cat("Rerunning tests: ", paste0(basename(tests), collapse = ", "), "\n")
      test_files(tests, env = env, reporter = reporter$clone(deep = TRUE))
    }

    TRUE
  }
  watch(c(code_path, test_path), watcher, hash = hash)
}

#' Watches a package for changes, rerunning tests as appropriate.
#'
#' @param pkg path to package
#' @export
#' @param reporter test reporter to use
#' @param hash Passed on to [watch()].  When FALSE, uses less accurate
#'   modification time stamps, but those are faster for large files.
#' @keywords debugging
#' @seealso [auto_test()] for details on how method works
auto_test_package <- function(pkg = ".", reporter = default_reporter(), hash = TRUE) {
  reporter <- find_reporter(reporter)

  path <- pkgload::pkg_path(path)
  package <- pkgload::pkg_name(path)

  code_path <- file.path(path, c("R", "src"))
  code_path <- code_path[file.exists(code_path)]
  code_path <- normalizePath(code_path)
  test_path <- normalizePath(file.path(path, "tests", "testthat"))

  # Start by loading all code and running all tests
  withr::local_envvar(list("NOT_CRAN" = "true"))
  pkgload::load_all(path)
  test_dir(test_path, package = package, reporter = reporter$clone(deep = TRUE))

  # Next set up watcher to monitor changes
  watcher <- function(added, deleted, modified) {
    changed <- normalizePath(c(added, modified))

    tests <- changed[starts_with(changed, test_path)]
    code <- changed[starts_with(changed, code_path)]

    # Remove helper from test and add it to code (if a helper changed,
    # like for code, reload all and rerun all tests)
    helper <- tests[starts_with(basename(tests), "helper-")]
    tests <- setdiff(tests, helper)
    code <- c(code, helper)

    if (length(code) > 0) {
      # Reload code and rerun all tests
      cat("Changed code: ", paste0(basename(code), collapse = ", "), "\n")
      cat("Rerunning all tests\n")
      pkgload::load_all(path, quiet = TRUE)
      test_dir(test_path, package = package, reporter = reporter$clone(deep = TRUE))
    } else if (length(tests) > 0) {
      # If test changes, rerun just that test
      cat("Rerunning tests: ", paste0(basename(tests), collapse = ", "), "\n")
      env <- env_clone(asNamespace(package))
      test_files(tests, env, reporter = reporter$clone(deep = TRUE))
    }

    TRUE
  }
  watch(c(code_path, test_path), watcher, hash = hash)
}

# Helpers -----------------------------------------------------------------

starts_with <- function(string, prefix) {
  substr(string, 1, nchar(prefix)) == prefix
}
