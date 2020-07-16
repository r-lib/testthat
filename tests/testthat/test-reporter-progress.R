test_that("captures error before first test", {
  local_output_override()

  expect_snapshot_reporter(
    ProgressReporter$new(update_interval = 0, min_time = Inf),
    test_path("reporters/error-setup.R")
  )
})

test_that("gracefully handles multiple contexts", {
  expect_snapshot_reporter(
    ProgressReporter$new(update_interval = 0, min_time = Inf),
    test_path("reporters/context.R")
  )
})


test_that("fails after max_fail tests", {
  expect_snapshot_reporter(
    ProgressReporter$new(update_interval = 0, min_time = Inf),
    test_path("reporters/fail-many.R")
  )
})

test_that("reports backtraces", {
  expect_snapshot_reporter(
    ProgressReporter$new(update_interval = 0, min_time = Inf),
    test_path("reporters/backtraces.R")
  )
})

# compact display ---------------------------------------------------------

test_that("compact display is informative", {
  expect_snapshot_reporter(
    CompactProgressReporter$new(),
    test_path("reporters/tests.R")
  )
})
