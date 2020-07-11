#' @include reporter.R
NULL

#' Test reporter: stop on error.
#'
#' The default reporter, executed when `expect_that` is run interactively.
#' It responds by [stop()]ping on failures and doing nothing otherwise. This
#' will ensure that a failing test will raise an error.
#'
#' This should be used when doing a quick and dirty test, or during the final
#' automated testing of R CMD check.  Otherwise, use a reporter that runs all
#' tests and gives you more context about the problem.
#'
#' @export
#' @family reporters
StopReporter <- R6::R6Class("StopReporter",
  inherit = Reporter,
  public = list(
    failures = NULL,
    stop_reporter = TRUE,

    initialize = function(stop_reporter = TRUE) {
      super$initialize()
      self$failures <- Stack$new()
      self$stop_reporter <- stop_reporter
    },

    start_test = function(context, test) {
      self$failures <- Stack$new()
    },

    add_result = function(context, test, result) {
      if (expectation_success(result)) {
        return()
      }

      self$failures$push(result)
    },

    end_test = function(context, test) {
      self$local_user_output()

      failures <- self$failures$as_list()
      if (length(failures) == 0) {
        self$cat_line(colourise("Test succeeded", "success"), " ", praise_emoji())
        return()
      }

      messages <- vapply(failures, stop_summary, character(1))
      self$cat_line(messages, "\n")

      if (self$stop_reporter) {
        stop_reporter("Test failed")
      }
    }
  )
)

stop_summary <- function(x) {
  type <- expectation_type(x)
  substr(type, 1, 1) <- toupper(substr(type, 1, 1))
  type <- colourise(type, expectation_type(x))

  loc <- if (is.null(x$srcref)) "" else paste0(" (line ", x$srcref[1], "): ")

  paste0(type, loc, format(x))
}
