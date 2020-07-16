test_that("captures expectations; doesn't produce any output", {
  reporter <- SilentReporter$new()
  expect_snapshot_reporter(reporter)
  expect_snapshot_value(length(reporter$expectations()))
})
