#' Test Compiled Code in a Package
#'
#' Test compiled code in the package \code{package}. See
#' \code{\link{use_catch}()} for more details.
#'
#' @note
#' A call to this function will automatically be generated
#' for you in \code{tests/testthat/test-cpp.R} after calling
#' \code{use_catch()}; you should not need to manually call
#' this expectation yourself.
#'
#' @param package The name of the package to test.
#'
#' @export
expect_cpp_tests_pass <- function(package) {

  routine <- get_routine(package, "run_testthat_tests")

  output <- ""
  tests_passed <- TRUE

  tryCatch(
    output <- utils::capture.output(tests_passed <- .Call(routine)),
    error = function(e) {
      warning(sprintf("failed to call test entrypoint '%s'", routine))
    }
  )

  # Drop first line of output (it's jut a '####' delimiter)
  info <- paste(output[-1], collapse = "\n")

  expect(tests_passed, paste("C++ unit tests:", info, sep = "\n"))

}

#' Use Catch for C++ Unit Testing
#'
#' Add the necessary infrastructure to enable C++ unit testing
#' in \R packages with
#' \href{https://github.com/philsquared/Catch}{Catch} and \code{testthat}.
#'
#' Calling \code{use_catch()} will:
#'
#' \enumerate{
#'
#'   \item Create a file \code{src/test-runner.cpp}, which ensures that the
#'         \code{testthat} package will understand how to run your package's
#'         unit tests,
#'
#'   \item Create an example test file \code{src/test-example.cpp}, which
#'         showcases how you might use Catch to write a unit test, and
#'
#'   \item Add a test file \code{tests/testthat/test-cpp.R}, which ensures that
#'         \code{testthat} will run your compiled tests during invocations of
#'         \code{devtools::test()} or \code{R CMD check}.
#' }
#'
#' C++ unit tests can be added to C++ source files within the
#' \code{src/} directory of your package, with a format similar
#' to \R code tested with \code{testthat}. Here's a simple example
#' of a unit test written with \code{testthat} + Catch:
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
#' for running these tests will be compiled into your \R package,
#' with the C entry point \code{run_testthat_tests()}. \code{testthat}
#' will use that entry point to run your unit tests when detected.
#'
#' @section Functions:
#'
#' All of the functions provided by Catch are
#' available with the \code{CATCH_} prefix -- see
#' \href{https://github.com/philsquared/Catch/blob/master/docs/assertions.md}{here}
#' for a full list. \code{testthat} provides the
#' following wrappers, to conform with \code{testthat}'s
#' \R interface:
#'
#' \tabular{lll}{
#' \strong{Function} \tab \strong{Catch} \tab \strong{Description} \cr
#' \code{context} \tab \code{CATCH_TEST_CASE} \tab The context of a set of tests. \cr
#' \code{test_that} \tab \code{CATCH_SECTION} \tab A test section. \cr
#' \code{expect_true} \tab \code{CATCH_CHECK} \tab Test that an expression evaluates to \code{true}. \cr
#' \code{expect_false} \tab \code{CATCH_CHECK_FALSE} \tab Test that an expression evalutes to \code{false}. \cr
#' \code{expect_error} \tab \code{CATCH_CHECK_THROWS} \tab Test that evaluation of an expression throws an exception. \cr
#' \code{expect_error_as} \tab \code{CATCH_CHECK_THROWS_AS} \tab Test that evaluation of an expression throws an exception of a specific class. \cr
#' }
#'
#' In general, you should prefer using the \code{testthat}
#' wrappers, as \code{testthat} also does some work to
#' ensure that any unit tests within will not be compiled or
#' run when using the Solaris Studio compilers (as these are
#' currently unsupported by Catch). This should make it
#' easier to submit packages to CRAN that use Catch.
#'
#' @section Advanced Usage:
#'
#' If you'd like to write your own Catch test runner, you can
#' instead use the \code{testthat::catchSession()} object in a file
#' with the form:
#'
#' \preformatted{
#' #define TESTTHAT_TEST_RUNNER
#' #include <testthat.h>
#'
#' void run()
#' {
#'     Catch::Session& session = testthat::catchSession();
#'     // interact with the session object as desired
#' }
#' }
#'
#' This can be useful if you'd like to run your unit tests
#' with custom arguments passed to the Catch session.
#'
#' @param dir The directory containing an \R package.
#'
#' @section Standalone Usage:
#'
#' If you'd like to use the C++ unit testing facilities provided
#' by Catch, but would prefer not to use the regular \code{testthat}
#' \R testing infrastructure, you can manually run the unit tests
#' by inserting a call to:
#'
#' \preformatted{
#' .Call("run_testthat_tests", PACKAGE = <pkgName>)
#' }
#'
#' as necessary within your unit test suite.
#'
#' @export
#' @seealso \href{https://github.com/philsquared/Catch}{Catch}, the
#'   library used to enable C++ unit testing.
use_catch <- function(dir = getwd()) {

  desc_path <- file.path(dir, "DESCRIPTION")
  if (!file.exists(desc_path))
    stop("no DESCRIPTION file at path '", desc_path, "'", call. = FALSE)

  desc <- read.dcf(desc_path, all = TRUE)
  pkg <- desc$Package
  if (!nzchar(pkg))
    stop("no 'Package' field in DESCRIPTION file '", desc_path, "'", call. = FALSE)

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

  # Copy the 'test-cpp.R' file.
  test_dir <- file.path(dir, "tests", "testthat")
  if (!file.exists(test_dir) && !dir.create(test_dir, recursive = TRUE))
    stop("failed to create 'tests/testthat/' directory '", test_dir, "'", call. = FALSE)

  template_file <- system.file(package = "testthat", "resources", "test-cpp.R")
  contents <- readChar(template_file, file.info(template_file)$size, TRUE)
  transformed <- sprintf(contents, pkg)
  output_path <- file.path(test_dir, "test-cpp.R")
  cat(transformed, file = output_path)

  message("> Added C++ unit testing infrastructure.")
  message("> Please ensure you have 'LinkingTo: testthat' in your DESCRIPTION.")
  message("> Please ensure you have 'useDynLib(", pkg, ")' in your NAMESPACE.")

}

get_routine <- function(package, routine) {

  resolved <- tryCatch(
    getNativeSymbolInfo(routine, PACKAGE = package),
    error = function(e) NULL
  )

  if (is.null(resolved))
    stop("failed to locate routine '", routine, "' in package '", package, "'", call. = FALSE)

  resolved
}
