#' @include reporter.R
NULL

#' Test reporter: Teamcity format.
#'
#' This reporter will output results in the Teamcity message format.
#' For more information about Teamcity messages, see
#' http://confluence.jetbrains.com/display/TCD7/Build+Script+Interaction+with+TeamCity
#'
#' @export
TeamcityReporter <- R6::R6Class("TeamcityReporter", inherit = Reporter,
  public = list(
    i = NA_integer_,

    start_context = function(context) {
      private$report_event("testSuiteStarted", context)
    },

    end_context = function(context) {
      private$report_event("testSuiteFinished", context)
      self$cat_paragraph()
    },

    start_test = function(context, test) {
      private$report_event("testSuiteStarted", test)
      self$i <- 1L
    },

    end_test = function(context, test) {
      private$report_event("testSuiteFinished", test)
      self$cat_line()
    },

    add_result = function(context, test, result) {
      testName <- paste0("expectation ", self$i)
      self$i <- self$i + 1L

      if (expectation_skip(result)) {
        private$report_event("testIgnored", testName, message = format(result))
        return()
      }

      private$report_event("testStarted", testName)

      if (!expectation_ok(result)) {
        lines <- strsplit(format(result), "\n")[[1]]

        private$report_event("testFailed", testName, message = lines[1],
          details = paste(lines[-1], collapse = "\n")
        )
      }
      private$report_event("testFinished", testName)
    }
  ),

  private = list(
    report_event = function(event, name, ...) {
      values <- list(name = name, ...)

      values <- vapply(values, teamcity_escape, character(1))
      if (length(values) == 0) {
        value_string <- ""
      } else {
        value_string <- paste0(names(values), "='", values, "'", collapse = " ")
      }

      self$cat_line("##teamcity[", event, " ", value_string, "]")
    }
  )
)

# teamcity escape character is |
teamcity_escape <- function(s) {
  s <- gsub("(['|]|\\[|\\])", "|\\1", s)
  gsub("\n", "|n", s)
}
