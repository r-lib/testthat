#' @include reporter.r
NULL

#' Test reporter: stop on error.
#'
#' The default reporter, executed when \code{expect_that} is run
#' interactively, or when the test files are executed by R CMD check. It
#' responds by \link{stop}()ing on failures and doing nothing otherwise. This
#' will ensure that a failing test will raise an error.
#'
#' This should be used when doing a quick and dirty test, or during the final
#' automated testing of R CMD check.  Otherwise, use a reporter that runs all
#' tests and gives you more context about the problem.
#'
#' @export
#' @exportClass StopReporter
#' @aliases StopReporter-class
#' @keywords debugging
StopReporter <- setRefClass("StopReporter", contains = "Reporter", 
  fields = c("failures"),
  methods = list(
    initialize = function(...) {
      failures <<- list()
      callSuper(...)
    },
    start_test = function(desc) {
      test <<- desc
    },

    end_test = function() {
      cur_test <- test
      test <<- NULL
      if (length(failures) == 0) return()

      messages <- vapply(failures, "[[", "", "message")
      if (length(messages) > 1) {
        messages <- str_c("* ", messages, collapse = "\n")
      }
      failures <<- list()

      msg <- str_c("Test failure in '", cur_test, "'\n", messages)
      stop(msg, call. = FALSE)
    },

    add_result = function(result) {
      if (result$passed) return()

      # If running in test suite, store, otherwise raise immediately.
      if (is.null(test)) {
        stop(result$message, call. = FALSE)
      } else {
        failures <<- c(failures, list(result))
      }
    }    
  )
)
