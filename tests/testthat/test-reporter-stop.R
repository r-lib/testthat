test_that("produces useful output", {
  expect_snapshot_reporter(StopReporter$new())
})

test_that("can suppress praise", {
  expect_snapshot_reporter(
    StopReporter$new(praise = FALSE),
    test_path("reporters/successes.R")
  )
})

test_that("errors when needed", {
  r <- StopReporter$new()
  expect_no_error(r$end_test())

  r$n_fail <- 1
  r$n_success <- 0
  expect_snapshot(error = TRUE, r$end_test())
})
