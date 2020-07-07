#' Run all tests in a directory
#'
#' Test all files in a directory.
#'
#' @param path Path to directory containing tests.
#' @param package Name of installed package.
#' @param filter If not `NULL`, only tests with file names matching this
#'   regular expression will be executed. Matching be performed on the file
#'   name after it has been stripped of `"test-"` and `".R"`.
#' @param ... Additional arguments passed to [grepl()] to control filtering.
#' @param stop_on_failure If `TRUE`, throw an error if any tests fail.
#' @param stop_on_warning If `TRUE`, throw an error if any tests generate
#'   warnings.
#' @inheritParams test_file
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

test_files <- function(test_dir, test_package, test_paths,
                       load_helpers = TRUE,
                       reporter = default_reporter(),
                       env = NULL,
                       stop_on_failure = FALSE,
                       stop_on_warning = FALSE,
                       wrap = TRUE) {

  # Define testing environment
  local_test_directory(test_dir, test_package)
  env <- env %||% test_env(test_package)
  withr::local_options(list(topLevelEnvironment = env))

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
  with_reporter(reporter,
    lapply(test_paths, test_one_file, reporter = reporter, env = env)
  )

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

test_one_file <- function(path, reporter, env = test_env()) {
  # Run any registered teardown helpers with specified working directory
  on.exit(teardown_run(dirname(path)), add = TRUE)

  reporter$start_file(basename(path))
  source_file(path, new.env(parent = env), chdir = TRUE)
  reporter$end_context_if_started()
  reporter$end_file()
}

#' Run all tests in specified file
#'
#' Execute code in the specified file, displaying results using a `reporter`.
#' Use this function when you want to run a single file's worth of tests.
#' You are responsible for ensuring that the functions to test are available
#' in the global environment.
#'
#' Any errors that occur in code run outside of `test_that()` will generate
#' a test failure and terminate execution of that test file.
#'
#' @param path Path to file.
#' @param env Environment in which to execute the tests. Expert use only.
#' @param load_helpers Source helper files before running the tests?
#'   See [source_test_helpers()] for more details.
#' @inheritParams with_reporter
#' @inheritParams source_file
#' @return Invisibly, a list with one element for each test.
#' @export
#' @examples
#' path <- testthat_example("success")
#' test_file(path, reporter = "minimal")
#'
#' # test_file() invisibly returns a list, with one element for each test.
#' # This can be useful if you want to compute on your test results.
#' out <- test_file(path, reporter = "minimal")
#' str(out[[1]])
test_file <- function(path,
                      reporter = default_compact_reporter(),
                      env = test_env(),
                      start_end_reporter = TRUE,
                      load_helpers = TRUE,
                      wrap = TRUE) {
  library(testthat)

  if (!file.exists(path)) {
    stop("`path` does not exist", call. = FALSE)
  }

  reporter <- find_reporter(reporter)
  if (!is.null(reporter) && reporter$is_full()) return()

  if (load_helpers) {
    source_test_helpers(dirname(path), env = env)
  }

  lister <- ListReporter$new()
  if (!is.null(reporter)) {
    reporter <- MultiReporter$new(reporters = list(reporter, lister))
  } else {
    reporter <- lister
  }

  on.exit(teardown_run(dirname(path)), add = TRUE)

  if (!is_testing()) {
    # Only set up if hasn't been done higher up
    local_test_directory(path)
  }

  with_reporter(
    reporter = reporter,
    start_end_reporter = start_end_reporter,
    {
      reporter$start_file(basename(path))
      source_file(path, new.env(parent = env), chdir = TRUE, wrap = wrap)
      reporter$end_context_if_started()
      reporter$end_file()
    }
  )

  invisible(lister$get_results())
}

# Helpers -----------------------------------------------------------------

#' Find the test files.
#'
#' @param path path to tests
#' @param filter cf [test_dir()]
#' @param invert If \sQuote{TRUE} return files which do \emph{not} match.
#' @param ... Additional arguments passed to [grepl()] to control filtering.
#' @return the test file paths
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
