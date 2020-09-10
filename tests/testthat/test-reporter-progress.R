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
  withr::local_options(list(testthat.progress.max_fails = 10))
  expect_snapshot_reporter(
    ProgressReporter$new(update_interval = 0, min_time = Inf),
    test_path("reporters/fail-many.R")
  )
})

test_that("can fully suppress incremental updates", {
  expect_snapshot_reporter(
    ProgressReporter$new(update_interval = 0, min_time = Inf),
    test_path("reporters/successes.R")
  )

  expect_snapshot_reporter(
    ProgressReporter$new(update_interval = Inf, min_time = Inf),
    test_path("reporters/successes.R")
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

test_that("display of successes only is compact", {
  expect_snapshot_reporter(
    CompactProgressReporter$new(),
    test_path("reporters/successes.R")
  )

  # And even more compact if in RStudio pane
  expect_snapshot_reporter(
    CompactProgressReporter$new(rstudio = TRUE),
    test_path("reporters/successes.R")
  )
})
