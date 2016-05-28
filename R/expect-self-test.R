#' @include reporter.R
NULL

#' Tools for testing expectations
#'
#' Use these expectations to test other expectations.
#'
#' @param expr Expression that evaluates a single expectation.
#' @param message Check that the failure message matches this regexp.
#' @param ... Other arguments passed on to \code{\link{expect_match}}.
#' @keywords internal
#' @export
expect_success <- function(expr) {
  exp <- capture_first_expectation(expr)

  if (is.null(exp)) {
    fail("no expectation used.")
  } else if (!expectation_success(exp)) {
    fail("expectation did not succeed.")
  } else {
    succeed()
  }
  invisible(NULL)
}

#' @export
#' @rdname expect_success
expect_failure <- function(expr, message = NULL, ...) {
  exp <- capture_first_expectation(expr)

  if (is.null(exp)) {
    fail("No expectation used")
  } else if (is.null(message)) {
    expect(expectation_failure(exp), "expectation did not fail.")
  } else {
    expect_match(exp$message, message, ...)
  }
  invisible(NULL)
}

capture_first_expectation <- function(expr) {
  tryCatch(
    {
      expr
      NULL
    },
    expectation = function(e) e
  )
}
