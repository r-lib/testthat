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

    initialize = function() {
      super$initialize()
      self$failures <- Stack$new()
    },

    end_test = function(context, test) {
      failures <- self$failures$as_list()
      if (length(failures) == 0) {
        return()
      }

      # reset failures for next test
      self$failures$initialize()

      messages <- vapply(failures, format, character(1))
      locations <- vapply(failures, exp_location, character(1))
      messages <- paste0("* ", locations, messages, collapse = "\n")
      message <- paste_line(
        paste0("Test failed: '", test, "'"),
        !!!messages
      )

      if (is.null(findRestart("testthat_abort_reporter"))) {
        stop(message, call. = FALSE)
      } else {
        cat(message, "\n")
        invokeRestart("testthat_abort_reporter")
      }
    },

    add_result = function(context, test, result) {
      if (expectation_broken(result)) {
        self$failures$push(result)
      }
    }
  )
)
