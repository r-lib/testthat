test_files <- function(paths,
                       reporter = default_reporter(),
                       env = test_env(),
                       stop_on_failure = FALSE,
                       stop_on_warning = FALSE,
                       wrap = TRUE) {
  if (length(paths) == 0) {
    stop("No matching test file in dir")
  }

  current_reporter <- find_reporter(reporter)
  with_reporter(
    reporter = current_reporter,
    results <- lapply(
      paths,
      test_file,
      env = env,
      reporter = current_reporter,
      start_end_reporter = FALSE,
      load_helpers = FALSE,
      wrap = wrap
    )
  )

  results <- unlist(results, recursive = FALSE)
  results <- testthat_results(results)

  if (stop_on_failure && !all_passed(results)) {
    stop("Test failures", call. = FALSE)
  }

  if (stop_on_warning && any_warnings(results)) {
    stop("Tests generated warnings", call. = FALSE)
  }

  invisible(results)
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
