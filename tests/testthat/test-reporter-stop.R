test_that("produces useful output", {
  expect_snapshot_reporter(StopReporter$new(stop_reporter = FALSE))
})

test_that("stop stops at first failure", {
  expect_snapshot_reporter(StopReporter$new(), test_path("reporters/fail.R"))
})
