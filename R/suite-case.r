SuiteCase$do({
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
  # each of which contain a list of expectations
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