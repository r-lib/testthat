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
#' @name StopReporter
#' @keywords debugging
NULL

StopReporter$do({
  self$failures <- list()
  
  self$start_test <- function(desc) {
    self$test <- desc
  }
  
  self$end_test <- function() {
    test <- self$test
    self$test <- NULL
    if (length(self$failures) == 0) return()
    
    messages <- vapply(self$failures, "[[", "", "message")
    if (length(messages) > 1) {
      messages <- str_c("* ", messages, collapse = "\n")
    }
    self$failures <- list()
    
    msg <- str_c("Test failure in '", test, "'\n", messages)
    stop(msg, call. = FALSE)      
  }
  
  self$add_result <- function(result) {
    if (result$passed) return()

    # If running in test suite, store, otherwise raise immediately.
    if (is.null(self$test)) {
      stop(result$message, call. = FALSE)
    } else {
      self$failures <- c(self$failures, list(result))
    }
  }  
})