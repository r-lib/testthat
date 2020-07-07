#' Run all tests in a directory
#'
#' Execute code in the specified file, displaying results using a `reporter`.
#' Use this function when you want to run a single file's worth of tests.
#' You are responsible for ensuring that the functions to test are available
#' in the global environment.
#'
#' Any errors that occur in code run outside of `test_that()` will generate
#' a test failure and terminate execution of that test file.
#'
#' @param path Path to directory containing tests.
#' @param package If these tests belong to a package, the name of the package.
#' @param filter If not `NULL`, only tests with file names matching this
#'   regular expression will be executed. Matching is performed on the file
#'   name after it's stripped of `"test-"` and `".R"`.
#' @param env Environment in which to execute the tests. Expert use only.
#' @param ... Additional arguments passed to [grepl()] to control filtering.
#' @param load_helpers Source helper files before running the tests?
#'   See [source_test_helpers()] for more details.
#' @param stop_on_failure If `TRUE`, throw an error if any tests fail.
#' @param stop_on_warning If `TRUE`, throw an error if any tests generate
#'   warnings.
#' @return A list (invisibly) containing data about the test results.
#' @inheritParams with_reporter
#' @inheritParams source_file
#' @export
test_dir <- function(path,
                     filter = NULL,
                     reporter = default_reporter(),
                     env = NULL,
                     ...,
                     load_helpers = TRUE,
                     stop_on_failure = FALSE,
                     stop_on_warning = FALSE,
                     wrap = TRUE,
                     package = NULL
                     ) {

  test_paths <- find_test_scripts(path, filter = filter, ...)
  if (length(test_paths) == 0) {
    abort("No test files found")
  }

  test_files(
    test_dir = path,
    test_paths = test_paths,
    test_package = package,
    reporter = reporter,
    load_helpers = load_helpers,
    env = env,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning,
    wrap = wrap
  )
}

#' Run all tests in a single file
#'
#' A variant of [test_dir()] that only tests a single file within a directory.
#' The directory is still used to locate helpers, setup and teardown files.
#'
#' @param path Path to file.
#' @param ... Additional parameters passed on to `test_dir()`
#' @inheritParams test_dir
#' @return Invisibly, a list with one element for each test.
#' @export
#' @examples
#' path <- testthat_example("success")
#' test_file(path)
#' test_file(path, reporter = "minimal")
test_file <- function(path, reporter = default_compact_reporter(), package = NULL, ...) {
  if (!file.exists(path)) {
    stop("`path` does not exist", call. = FALSE)
  }

  test_files(
    test_dir = dirname(path),
    test_package = package,
    test_paths = path,
    reporter = reporter,
    ...
  )
}

test_files <- function(test_dir,
                       test_package,
                       test_paths,
                       load_helpers = TRUE,
                       reporter = default_reporter(),
                       env = NULL,
                       stop_on_failure = FALSE,
                       stop_on_warning = FALSE,
                       wrap = TRUE) {

  # Define testing environment
  local_test_directory(test_dir, test_package)
  env <- env %||% test_env(test_package)
  withr::local_options(list(topLevelEnvironment = env_parent(env)))

  # Load helpers, setup, and teardown (on exit)
  if (load_helpers) {
    source_test_helpers(test_dir, env)
  }
  source_test_setup(test_dir, env)
  on.exit(source_test_teardown(test_dir, env), add = TRUE)

  # Wrap reporter
  reporter <- find_reporter(reporter)
  lister <- ListReporter$new()
  if (!is.null(reporter)) {
    reporter <- MultiReporter$new(reporters = list(reporter, lister))
  } else {
    reporter <- lister
  }

  # Run tests tests
  library(testthat)
  with_reporter(reporter, lapply(test_paths, test_one_file, env = env))

  # Check results
  results <- lister$get_results()
  if (stop_on_failure && !all_passed(results)) {
    stop("Test failures", call. = FALSE)
  }
  if (stop_on_warning && any_warnings(results)) {
    stop("Tests generated warnings", call. = FALSE)
  }

  invisible(results)
}

test_one_file <- function(path, env = test_env()) {
  reporter <- get_reporter()

  # Run any registered teardown helpers with specified working directory
  on.exit(teardown_run(dirname(path)), add = TRUE)

  reporter$start_file(basename(path))
  source_file(path, new.env(parent = env), chdir = TRUE)
  reporter$end_context_if_started()
  reporter$end_file()
}

# Helpers -----------------------------------------------------------------

#' Find test files
#'
#' @param path path to tests
#' @param invert If `TRUE` return files which **don't** match.
#' @param ... Additional arguments passed to [grepl()] to control filtering.
#' @inheritParams test_dir
#' @return A character vector of paths
#' @keywords internal
#' @export
find_test_scripts <- function(path, filter = NULL, invert = FALSE, ...) {
  files <- dir(path, "^test.*\\.[rR]$", full.names = TRUE)
  filter_test_scripts(files, filter, invert, ...)
}

filter_test_scripts <- function(files, filter = NULL, invert = FALSE, ...) {
  if (is.null(filter)) {
    return(files)
  }

  which_files <- grepl(filter, context_name(files), ...)
  if (isTRUE(invert)) {
    which_files <- !which_files
  }
  files[which_files]
}
