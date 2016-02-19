#' @include reporter.r
NULL

#' Tools for testing expectations
#'
#' Use these expectations to test other expectations.
#'
#' @param expr Expression that evaluates an expectation.
#' @param message Check that the failure message matches this regexp.
#' @param ... Other arguments passed on to \code{\link{expect_match}}.
#' @keywords internal
#' @export
expect_success <- function(expr) {
  exp <- with_reporter(SingleReporter(result = NULL), expr)$result

  if (is.null(exp)) {
    expect(FALSE, "no expectation processed")
  } else {
    expect(exp$passed, "expectation failed")
  }
}

#' @export
#' @rdname expect_success
expect_failure <- function(expr, message = NULL, ...) {
  exp <- with_reporter(SingleReporter(result = NULL), expr)$result

  if (is.null(exp)) {
    expect(FALSE, "no expectation processed")
  } else {
    if (is.null(message)) {
      expect(!exp$passed, "expectation succeeded")
    } else {
      expect_match(exp$message, message, ...)
    }
  }
}

SingleReporter <- setRefClass("SingleReporter", contains = "Reporter",
  fields = c("result"),
  methods = list(
    add_result = function(x) {
      result <<- x
    }
  )
)
