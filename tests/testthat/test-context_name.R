test_that("context_name strips prefix and extensions correctly", {
  expect_equal(context_name("test-metrics.R"), "metrics")     # uppercase
  expect_equal(context_name("test-metrics.r"), "metrics")     # lowercase
  expect_equal(context_name("test-check.Rfile.R"), "check.Rfile") # suffix only
  expect_equal(context_name("test-test-test.R"), "test-test") # 1st prefix only
})
