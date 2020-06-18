CountReporter <- R6::R6Class("CountReporter",
  inherit = Reporter,
  public = list(
    context_i = 0,
    context_count = 0,
    test_i = 0,
    test_count = 0,

    start_context = function(context) {
      self$context_count <- self$context_count + 1
      self$context_i <- self$context_i + 1
    },
    end_context = function(context) {
      self$context_i <- self$context_i - 1
      stopifnot(self$context_i >= 0)
    },
    start_test = function(context, test) {
      self$test_count <- self$test_count + 1
      self$test_i <- self$test_i + 1
    },
    end_test = function(context, test) {
      self$test_i <- self$test_i - 1
      stopifnot(self$test_i >= 0)
    }
  )
)

test_that("contexts are opened, then closed", {
  report <- CountReporter$new()
  test_file("context.R", report, wrap = FALSE)
  expect_that(report$context_count, equals(2))
  expect_that(report$context_i, equals(0))
  expect_that(report$test_count, equals(4))
  expect_that(report$test_i, equals(0))
})
