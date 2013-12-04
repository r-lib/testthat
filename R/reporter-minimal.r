#' @include reporter.r
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
      if (result$passed) {
        cat(colourise(".", fg = "light green"))
      } else {
        failed <<- TRUE
        if (result$error) {
          cat(colourise("F", fg = "red"))
        } else {
          cat(colourise("E", fg = "red"))
        }
      }
    },

    end_reporter = function() {
      cat("\n")
    }
  )
)
