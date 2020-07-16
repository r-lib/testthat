test_that("reporter basics work", {
  expect_snapshot_reporter(TeamcityReporter$new())
})
