test_that("reporter basics works", {
  expect_snapshot_reporter(RstudioReporter$new())
})
