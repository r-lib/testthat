#' @include reporter.R
NULL

#' Test reporter: minimal.
#'
#' The minimal test reporter provides the absolutely minimum amount of
#' information: whether each expectation has succeeded, failed or experienced
#' an error.  If you want to find out what the failures and errors actually
#' were, you'll need to run a more informative test reporter.
#'
#' @export
#' @keywords debugging
#' @export MinimalReporter
#' @aliases MinimalReporter
#' @param ... Arguments used to initialise class
MinimalReporter <- setRefClass("MinimalReporter", contains = "Reporter",
  methods = list(
    add_result = function(result) {
      callSuper(result)
      cat(single_letter_summary(result))
    },

    end_reporter = function() {
      cat("\n")
    }
  )
)
