#' Create a test.
#'
#' A test encapsulates a series of expectations about small, self-contained
#' set of functionality.  Each test is contained in a \link{context} and
#' contains multiple expectation generated by \code{\link{expect_that}}.
#'
#' Tests are evaluated in their own environments, and should not affect
#' global state.
#'
#' When run from the command line, tests return \code{NULL} if all
#' expectations are met, otherwise it raises an error.
#'
#' @param desc test name.  Names should be kept as brief as possible, as they
#'   are often used as line prefixes.
#' @param code test code containing expectations
#' @export
#' @examples
#' test_that("trigonometric functions match identities", {
#'   expect_that(sin(pi / 4), equals(1 / sqrt(2)))
#'   expect_that(cos(pi / 4), equals(1 / sqrt(2)))
#'   expect_that(tan(pi / 4), equals(1))
#' })
#' # Failing test:
#' \dontrun{
#' test_that("trigonometric functions match identities", {
#'   expect_that(sin(pi / 4), equals(1))
#' })
#' }
test_that <- function(desc, code) {
  test_code(desc, substitute(code), env = parent.frame())
  invisible()
}

# Generate error report from traceback.
#
# @keywords internal
# @param error error message
# @param traceback traceback generated by \code{\link{create_traceback}}
error_report <- function(error, traceback) {
  msg <- gsub("Error.*?: ", "", as.character(error))

  if (length(traceback) > 0) {
    user_calls <- paste0(traceback, collapse = "\n")
    msg <- paste0(msg, user_calls)
  } else {
    # Need to remove trailing newline from error message to be consistent
    # with other messages
    msg <- gsub("\n$", "", msg)
  }

  expectation(NA, msg, "no error occured")
}

# Executes a test.
#
# @keywords internal
# @param description the test name
# @param code the code to be tested, needs to be an unevaluated expression
#   i.e. wrap it in substitute()
# @param env the parent environment of the environment the test code runs in
test_code <- function(description, code, env) {
  new_test_environment <- new.env(parent = env)
  get_reporter()$start_test(description)
  on.exit(get_reporter()$end_test())
  res <- suppressMessages(try_capture_stack(
    code, new_test_environment))

  if (is.error(res)) {
    traceback <- create_traceback(res$calls)
    report <- error_report(res, traceback)
    get_reporter()$add_result(report)
  }
}

#' R package to make testing fun!
#'
#' Try the example below. Have a look at the references and at functions like \code{\link{expect_that}} to learn more.
#'
#' @details Software testing is important, but many of us don’t do it because it is frustrating and boring. testthat is a new testing framework for R that is easy learn and use, and integrates with your existing workﬂow. 
#' 
#' @references Wickham, H (2011). testthat: Get Started with Testing The R Journal Vol. 3/1 5-10. \url{http://journal.r-project.org/archive/2011-1/RJournal_2011-1_Wickham.pdf}
#' 
#' \url{https://github.com/hadley/testthat}
#' 
#' \url{http://adv-r.had.co.nz/Testing.html}
#'
#' @examples
#' library(testthat)
#' a <- 9
#' expect_that(a, is_less_than(10))
#' expect_less_than(a, 10)
#' @docType package
#' @name testthat
NULL
