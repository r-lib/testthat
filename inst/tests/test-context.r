context("Contexts")

CountReporter <- Reporter$clone()$do({
  self$context <- 0
  self$context_count <- 0

  self$test <- 0
  self$test_count <- 0
  
  self$start_context <- function(desc) {
    self$context_count <- self$context_count + 1
    self$context <- self$context + 1
  }
  
  self$end_context <- function() {
    self$context <- self$context - 1
    stopifnot(self$context >= 0)
  }

  self$start_test <- function(desc) {
    self$test_count <- self$test_count + 1
    self$test <- self$test + 1
  }
  
  self$end_test <- function() {
    self$test <- self$test - 1
    stopifnot(self$test >= 0)
  }
})

test_that("contexts are opened, then closed", {
  report <- CountReporter$clone()
  test_file("context.r", report)
  expect_that(report$context_count, equals(2))
  expect_that(report$context, equals(0))
  expect_that(report$test_count, equals(4))
  expect_that(report$test, equals(0))
})