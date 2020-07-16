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
  local_edition(2)
  report <- CountReporter$new()

  with_reporter(report, test_one_file("context.R"))
  expect_equal(report$context_count, 2)
  expect_equal(report$context_i, 0)
  expect_equal(report$test_count, 4)
  expect_equal(report$test_i, 0)
})

test_that("context_name strips prefix and extensions correctly", {
  expect_equal(context_name("test-metrics.R"), "metrics")     # uppercase
  expect_equal(context_name("test-metrics.r"), "metrics")     # lowercase
  expect_equal(context_name("test-check.Rfile.R"), "check.Rfile") # suffix only
  expect_equal(context_name("test-test-test.R"), "test-test") # 1st prefix only
  expect_equal(context_name("test_metrics.R"), "metrics")
})
