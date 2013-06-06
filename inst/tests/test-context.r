context("Contexts")

CountReporter <- setRefClass("CountReporter", contains = "Reporter",
  fields = c("context_count", "test_count", "context_i", "test_i", "provided_context_count"),
  methods = list(
   initialize = function() {
     context_i <<- 0
     context_count <<- 0
     provided_context_count <<- 0
     test_i <<- 0
     test_count <<- 0

     callSuper()
  },
  start_context = function(desc, provided) {    
    context_count <<- context_count + 1
    context_i <<- context_i + 1    
    
    if (provided){
      provided_context_count <<- provided_context_count + 1
    }
  },
  end_context = function() {
    context_i <<- context_i - 1
    stopifnot(context_i >= 0)
  },
  start_test = function(desc) {
    test_count <<- test_count + 1
    test_i <<- test_i + 1
  },
  end_test = function() {
    test_i <<- test_i - 1
    stopifnot(test_i >= 0)
  }
))

test_that("contexts are opened, then closed", {
  report <- CountReporter$new()
  test_file("context.r", report)
  expect_that(report$context_count, equals(3))
  expect_that(report$provided_context_count, equals(1))
  expect_that(report$context_i, equals(0))
  expect_that(report$test_count, equals(4))
  expect_that(report$test_i, equals(0))
})
