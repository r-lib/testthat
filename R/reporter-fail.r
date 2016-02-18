#' @include reporter.r
NULL

#' Test reporter: fail at end.
#'
#' This reporter will simply throw an error if any of the tests failed. It is
#' best combined with another reporter, such as the
#' \code{\link{SummaryReporter}}.
#'
#' @export
#' @export FailReporter
#' @aliases FailReporter
#' @keywords debugging
#' @param ... Arguments used to initialise class
FailReporter <- setRefClass("FailReporter", contains = "Reporter",
  methods = list(
    end_reporter = function() {
      if (failed) {
        stop("Failures detected.", call. = FALSE)
      }
    }
  )
)
