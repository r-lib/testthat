test_that("reporter works", {
  expect_snapshot_reporter(TapReporter$new())
})
