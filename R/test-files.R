#' Generate default testing environment.
#'
#' We use a new environment which inherits from [globalenv()].
#' In an ideal world, we'd avoid putting the global environment on the
#' search path for tests, but it's not currently possible without losing
#' the ability to load packages in tests.
#'
#' @keywords internal
#' @export
test_env <- function() {
  new.env(parent = globalenv())
}

#' Run all of the tests in a directory.
#'
#' There are four classes of `.R` files that have special behaviour:
#' * Test files start with `test` and are executed in alphabetical order.
#' * Helper files start with `helper` and are executed before tests are
#'   run and from `devtools::load_all()`.
#' * Setup files start with `setup` and are executed before tests, but not
#'   during `devtools::load_all()`.
#' * Teardown files start with `teardown` and are executed after the tests
#'   are run.
#'
#' @param path path to tests
#' @param filter If not `NULL`, only tests with file names matching this
#'   regular expression will be executed.  Matching will take on the file
#'   name after it has been stripped of `"test-"` and `".R"`.
#' @param ... Additional arguments passed to [grepl()] to control filtering.
#' @param stop_on_failure If `TRUE`, throw an error if any tests fail.
#' @param stop_on_warning If `TRUE`, throw an error if any tests generate
#'   warnings.
#' @inheritParams test_file
#'
#' @return The results of the reporter function on all test results.
#' @export
test_dir <- function(path,
                     filter = NULL,
                     reporter = default_reporter(),
                     env = test_env(), ...,
                     encoding = "unknown",
                     load_helpers = TRUE,
                     stop_on_failure = FALSE,
                     stop_on_warning = FALSE
                     ) {
  if (!missing(encoding) && !identical(encoding, "UTF-8")) {
    warning("`encoding` is deprecated; all files now assumed to be UTF-8", call. = FALSE)
  }

  if (load_helpers) {
    source_test_helpers(path, env)
  }
  source_test_setup(path, env)
  on.exit(source_test_teardown(path, env), add = TRUE)

  # unset R_TESTS which causes R to have special (annoying) behaviour
  old_r_tests <- Sys.getenv("R_TESTS")
  Sys.unsetenv("R_TESTS")
  on.exit(Sys.setenv("R_TESTS" = old_r_tests), add = TRUE)

  paths <- find_test_scripts(path, filter, ...)

  test_files(
    paths,
    reporter = reporter,
    env = env,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning
  )
}

test_files <- function(paths,
                       reporter = default_reporter(),
                       env = test_env(),
                       stop_on_failure = FALSE,
                       stop_on_warning = FALSE
                       ) {
  if (length(paths) == 0) {
    stop('No matching test file in dir')
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
      wrap = TRUE
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

# Filter File List for Tests, used by find_test_scripts

filter_test_scripts <- function(files, filter = NULL, invert = FALSE, ...) {
  if (!is.null(filter)) {
    test_names <- basename(files)
    test_names <- sub("^test-?", "", test_names)
    test_names <- sub("\\.[rR]$", "", test_names)

    which_files <- grepl(filter, test_names, ...)

    if (isTRUE(invert)) {
      which_files <- !which_files
    }
    files <- files[which_files]
  }
  files
}

#' Find the test files.
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

#' Run all tests in specified file.
#'
#' @param path path to file
#' @param reporter reporter to use
#' @param env environment in which to execute the tests
#' @param load_helpers Source helper files before running the tests?
#' @param encoding File encoding, default is "unknown"
#' `unknown`.
#' @inheritParams with_reporter
#' @inheritParams source_file
#' @return the results as a "testthat_results" (list)
#' @export
test_file <- function(path, reporter = default_reporter(), env = test_env(),
                      start_end_reporter = TRUE, load_helpers = TRUE,
                      encoding = "unknown", wrap = TRUE) {
  library(testthat)

  if (!missing(encoding)) {
    warning("`encoding` is deprecated; all files now assumed to be UTF-8", call. = FALSE)
  }

  reporter <- find_reporter(reporter)
  if (reporter$is_full()) return()

  if (load_helpers) {
    source_test_helpers(dirname(path), env = env)
  }

  lister <- ListReporter$new()
  if (!is.null(reporter)) {
    reporter <- MultiReporter$new(reporters = list(reporter, lister))
  } else {
    reporter <- lister
  }

  on.exit({
    teardown_run(dirname(path))
    gc()
  }, add = TRUE)

  with_reporter(
    reporter = reporter,
    start_end_reporter = start_end_reporter,
    {
      lister$start_file(basename(path))

      source_file(path, new.env(parent = env),
                  chdir = TRUE, wrap = wrap)

      end_context()
    }
  )

  invisible(lister$get_results())
}
