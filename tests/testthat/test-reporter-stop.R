test_that("produces useful output", {
  expect_snapshot_reporter(StopReporter$new())
})

test_that("can suppress praise", {
  expect_snapshot_reporter(
    StopReporter$new(praise = FALSE),
    test_path("reporters/successes.R")
  )
})

test_that("stop if needed errors when needed", {
  r <- StopReporter$new()
  expect_no_error(r$stop_if_needed())
  r$n_fail <- 1
  expect_snapshot(error = TRUE, r$stop_if_needed())
  r$stop_reporter <- FALSE
  expect_no_error(r$stop_if_needed())
})
