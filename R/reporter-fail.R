#' @include reporter.R
NULL

#' Test reporter: fail at end.
#'
#' This reporter will simply throw an error if any of the tests failed. It is
#' best combined with another reporter, such as the
#' \code{\link{SummaryReporter}}.
#'
#' @export
FailReporter <- R6::R6Class("FailReporter", inherit = Reporter,
  public = list(
    failed = FALSE,

    add_result = function(context, test, result) {
      self$failed <- self$failed || expectation_broken(result)
    },

    end_reporter = function() {
      if (self$failed) {
        stop("Failures detected.", call. = FALSE)
      }
    }
  )
)
