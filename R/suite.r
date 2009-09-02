# Manage a suite of tests

Suite <- Object$clone()$do({
  
  self$start_context <- function(desc) {}
  self$start_test <- function(desc) {}
  self$end_context <- function() {}
  self$end_test <- function() {}
  self$add_result <- function(result) {}
  
  # start_context, end_context
  # start_test, end_test
  # Use with either block scope, or no scope - whichever you want!
  
})

#' The default suit is executed when expect_that is run interactively, not
#' in the framework of a test suite.  It should respond by stop()ing on errors
#' and doing nothing otherwise. 
StopSuite <- Suite$clone()$do({
  
  self$add_result <- function(result) {
    if (result$passed) return()
    
    stop(result$message, call. = FALSE)
  }
  # cat("  ", desc, ": ", sep = "")
  # cat("\n") 
  
})

ChattySuite <- Suite$clone()$do({
  
  self$start_context <- function(desc) {
    cat(desc, "\n")
  }
  
  self$start_test <- function(desc) {
    cat("  ", desc, ": ", sep = "")
  }
  
  self$add_result <- function(result) {
    if (result$passed) {
      cat(".")
    } else {
      cat("F")
    }
  }
  self$end_test <- function() {
    cat("\n")
  }
  
})

SuiteCase <- Suite$clone()$do({
  self$new_context <- function(context) {
    self$context <- context
    self$results[[context]] <- list()
  }
  
  self$new_test <- function(test) {
    self$test <- test
    self$results[[self$context]][[self$test]] <- list()
  }
  
  self$new_result <- function(result) {
    n <- length(self$results[[self$context]][[self$test]])
    self$results[[self$context]][[self$test]][[n + 1]] <- result 
  }
  
  # Results is a list of contexts, each of which contain a list of tests, 
  # each of which containg a list of expectations
  self$results <- list()
  self$context <- NULL
  self$test <- NULL
  
  self$init <- function() {
    self$reset()
  }
  
  self$reset <- function() {
    self$results <- list()
    self$new_context("default")
    self$new_test("default")
  }
  
})


# suite <- Suite$clone()
# suite$new_context("My context")
# suite$new_test("Hullabaloo")
# suite$new_result(is_a("character")("Hello"))
# suite$new_result(is_a("character")(6))
# 
test_suite <- StopSuite$clone()