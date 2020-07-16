test_that("reporter as expected", {
  expect_snapshot_reporter(LocationReporter$new())
})
