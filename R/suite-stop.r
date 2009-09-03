#' The default suite, executed when \code{expect_that} is run interactively,
#' or when the test files are executed by R CMD check. It responds by
#' stop()ing on failures and doing nothing otherwise. This will ensure
#' that a failing test suite will raise an error.
#'
#' This should be used when doing a quick and dirty test, or during the final
#' automated testing of R CMD check.  Otherwise, use a suite that runs all
#' tests and gives you more context about the problem.
StopSuite$do({
  self$add_result <- function(result) {
    if (result$passed) return()
    
    stop(result$message, call. = FALSE)
  }  
})