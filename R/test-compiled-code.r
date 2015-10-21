#' Use Catch for C++ Unit Testing
#'
#' Add the necessary infrastructure to enable C++ unit testing
#' in \R packages with
#' \href{https://github.com/philsquared/Catch}{Catch} and \code{testthat}.
#'
#' This function will:
#'
#' \enumerate{
#'   \item Create a file \code{src/test-runner.cpp}, which ensures that the
#'         \code{testthat} package will understand how to run your package's
#'         unit tests,
#'   \item Create an example test file \code{src/test-example.cpp}, which
#'         showcases how you might use \code{Catch} to write a unit test.
#' }
#'
#' C++ unit tests can be added to C++ source files within the
#' \code{src/} directory of your package, with a format similar
#' to \R code tested with \code{testthat} -- for example,
#'
#' \preformatted{
#' context("C++ Unit Test") {
#'   test_that("two plus two is four") {
#'     int result = 2 + 2;
#'     expect_true(result == 4);
#'   }
#' }
#' }
#'
#' When your package is compiled, unit tests alongside a harness
#' for running these tests will be compiled into the \R package,
#' with the entry point \code{run_testthat_tests()}. \code{testthat}
#' will use that entry point to run your unit tests when detected.
#'
#' @param dir The directory containing an \R package.
#'
#' @export
#' @seealso \href{https://github.com/philsquared/Catch}{Catch}, the
#'   library used to enable C++ unit testing.
use_catch <- function(dir = getwd()) {

  desc_path <- file.path(dir, "DESCRIPTION")
  if (!file.exists(desc_path))
    stop("no DESCRIPTION file at path '", desc_path, "'", call. = FALSE)

  src_dir <- file.path(dir, "src")
  if (!file.exists(src_dir) && !dir.create(src_dir))
    stop("failed to create 'src/' directory '", src_dir, "'", call. = FALSE)

  test_runner_path <- file.path(src_dir, "test-runner.cpp")

  # Copy the test runner.
  success <- file.copy(
    system.file(package = "testthat", "resources", "test-runner.cpp"),
    test_runner_path,
    overwrite = TRUE
  )

  if (!success)
    stop("failed to copy 'test-runner.cpp' to '", src_dir, "'", call. = FALSE)

  # Copy the test example.
  success <- file.copy(
    system.file(package = "testthat", "resources", "test-example.cpp"),
    file.path(src_dir, "test-example.cpp"),
    overwrite = TRUE
  )

  if (!success)
    stop("failed to copy 'test-example.cpp' to '", src_dir, "'", call. = FALSE)

  message("> Added C++ unit testing infrastructure.")
  message("> Please add 'LinkingTo: testthat' to your DESCRIPTION file.")

}

get_active_pkg <- function() {

  ## For R CMD check; check env
  env <- Sys.getenv("R_TESTTHAT_PACKAGE", unset = "")
  if (nzchar(env))
    return(env)

  ## Otherwise, check relative to current directory.
  path <- normalizePath(getwd())
  parent <- dirname(path)
  while (parent != path) {
    if (file.exists(file.path(path, "DESCRIPTION"))) {
      contents <- read.dcf(file.path(path, "DESCRIPTION"), all = TRUE)
      if ("Package" %in% names(contents))
        return(contents[["Package"]])
    }

    path <- parent
    parent <- dirname(path)
  }

  ""

}

get_routine <- function(package, routine) {
  tryCatch(
    getNativeSymbolInfo(routine, PACKAGE = package),
    error = function(e) NULL
  )
}

# Get the reporter's type as a string
reporter_type <- function(reporter) {

  if (is.character(reporter))
    return(reporter)

  if (inherits(reporter, "Reporter"))
    return(tolower(sub("Reporter", "", class(reporter))))

  ""
}

# Returns TRUE if no tests available, or all tests succeeded.
test_compiled_code <- function(reporter, ...) {

  package <- get_active_pkg()
  if (!nzchar(package))
    return(TRUE)

  routine <- get_routine(package, "run_testthat_tests")
  if (is.null(routine))
    return(TRUE)

  output <- ""
  status <- 1

  tryCatch(
    output <- utils::capture.output(status <- .Call(routine)),
    error = function(e) {
      warning(sprintf("failed to call test entrypoint '%s'", routine))
    }
  )

  expect_equal(status, 0, info = output[-1])

}

