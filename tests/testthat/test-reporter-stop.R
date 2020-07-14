test_that("produces useful output", {
  set.seed(1014)
  expect_snapshot_reporter(StopReporter$new(stop_reporter = FALSE))
})

test_that("stop stops at first failure", {
  expect_snapshot_reporter(StopReporter$new(), test_path("reporters/fail.R"))
})
