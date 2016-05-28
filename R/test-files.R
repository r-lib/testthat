#' Generate default testing environment.
#'
#' We use a new environment which inherits from \code{\link{globalenv}}.
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
#' Test files start with \code{test} and are executed in alphabetical order
#' (but they shouldn't have dependencies). Helper files start with
#' \code{helper} and loaded before any tests are run.
#'
#' @param path path to tests
#' @param reporter reporter to use
#' @param filter If not \code{NULL}, only tests with file names matching this
#'   regular expression will be executed.  Matching will take on the file
#'   name after it has been stripped of \code{"test-"} and \code{".R"}.
#' @param env environment in which to execute test suite.
#' @param ... Additional arguments passed to \code{grepl} to control filtering.
#'
#' @return the results as a "testthat_results" (list)
#' @export
test_dir <- function(path, filter = NULL, reporter = "summary",
                                          env = test_env(), ...) {
  source_test_helpers(path, env)
  paths <- find_test_scripts(path, filter, ...)

  test_files(paths, reporter = reporter, env = env, ...)
}

test_files <- function(paths, reporter = "summary",
                       env = test_env(), ...) {
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
      load_helpers = FALSE
    )
  )

  results <- unlist(results, recursive = FALSE)

  invisible(testthat_results(results))
}


#' Find the test files.
#' @param path path to tests
#' @param filter cf \code{\link{test_dir}}
#' @param invert If \sQuote{TRUE} return files which do \emph{not} match.
#' @param ... Additional arguments passed to \code{grepl} to control filtering.
#' @return the test file paths
#' @keywords internal
#' @export
find_test_scripts <- function(path, filter = NULL, invert = FALSE, ...) {
  files <- dir(path, "^test.*\\.[rR]$", full.names = TRUE)
  if (!is.null(filter)) {
    test_names <- basename(files)
    test_names <- gsub("^test-?", "", test_names)
    test_names <- gsub("\\.[rR]", "", test_names)

    which_files <- grepl(filter, test_names, ...)

    if (isTRUE(invert)) {
      which_files <- !which_files
    }
    files <- files[which_files]
  }

  files
}

#' Run all tests in specified file.
#'
#' @param path path to file
#' @param reporter reporter to use
#' @param env environment in which to execute the tests
#' @param load_helpers Source helper files before running the tests?
#' @inheritParams with_reporter
#' @return the results as a "testthat_results" (list)
#' @export
test_file <- function(path, reporter = "summary", env = test_env(),
                      start_end_reporter = TRUE, load_helpers = TRUE) {
  library(testthat)

  reporter <- find_reporter(reporter)

  if (load_helpers) {
    source_test_helpers(dirname(path), env = env)
  }

  lister <- ListReporter$new()
  if (!is.null(reporter)) {
    reporter <- MultiReporter$new(reporters = list(reporter, lister))
  } else {
    reporter <- lister
  }

  with_reporter(
    reporter = reporter,
    start_end_reporter = start_end_reporter,
    {
      lister$start_file(basename(path))

      source_file(path, new.env(parent = env), chdir = TRUE)
      end_context()
    }
  )

  invisible(lister$get_results())
}
