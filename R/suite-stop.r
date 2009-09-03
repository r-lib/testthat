
#' The default suit is executed when expect_that is run interactively, not
#' in the framework of a test suite.  It should respond by stop()ing on errors
#' and doing nothing otherwise. 
StopSuite$do({
  
  self$add_result <- function(result) {
    if (result$passed) return()
    
    stop(result$message, call. = FALSE)
  }  
})