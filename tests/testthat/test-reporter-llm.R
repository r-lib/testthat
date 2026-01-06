test_that("reports issues immediately but not successes", {
  expect_snapshot_reporter(
    LlmReporter$new(),
    test_path("reporters/tests.R")
  )
})

test_that("reports only summary for all successes", {
  expect_snapshot_reporter(
    LlmReporter$new(),
    test_path("reporters/successes.R")
  )
})

test_that("fails after max_fail tests", {
  withr::local_options(testthat.progress.max_fails = 3)
  expect_snapshot_reporter(
    LlmReporter$new(),
    test_path(c("reporters/fail-many.R", "reporters/fail.R"))
  )
})
