test_that("produces useful output", {
  expect_snapshot_reporter(StopReporter$new())
})

test_that("can suppress praise", {
  expect_snapshot_reporter(
    StopReporter$new(praise = FALSE),
    test_path("reporters/successes.R")
  )
})

test_that("stop if needed errors when needed",{
  r <- StopReporter$new()
  expect_error(r$stop_if_needed(), NA)
  r$n_fail <- 1
  expect_error(r$stop_if_needed(), "Test failed")
  r$stop_reporter <- FALSE
  expect_error(r$stop_if_needed(), NA)
})
