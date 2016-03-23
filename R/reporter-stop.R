#' @include reporter.R
NULL

#' Test reporter: stop on error.
#'
#' The default reporter, executed when \code{expect_that} is run
#' interactively. It
#' responds by \link{stop}()ing on failures and doing nothing otherwise. This
#' will ensure that a failing test will raise an error.
#'
#' This should be used when doing a quick and dirty test, or during the final
#' automated testing of R CMD check.  Otherwise, use a reporter that runs all
#' tests and gives you more context about the problem.
#'
#' @export
StopReporter <- R6::R6Class("StopReporter", inherit = Reporter,
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
      messages <- paste0("* ", messages, collapse = "\n")

      stop("Test failed: '", test, "'\n", messages, call. = FALSE)
    },

    add_result = function(context, test, result) {
      if (expectation_broken(result)) {
        self$failures$push(result)
      }
    }
  )
)
