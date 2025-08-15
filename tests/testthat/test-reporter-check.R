test_that("basic report works", {
  withr::defer(unlink(test_path("testthat-problems.rds")))
  expect_snapshot_reporter(CheckReporter$new())

  rds <- test_path("testthat-problems.rds")
  expect_true(file.exists(rds))
})

test_that("doesn't truncate long lines", {
  withr::defer(unlink(test_path("testthat-problems.rds")))

  expect_snapshot_reporter(
    CheckReporter$new(),
    test_path("reporters/long-test.R")
  )
})

test_that("always shows summary", {
  file.create(test_path("testthat-problems.rds"))

  expect_snapshot_reporter(
    CheckReporter$new(),
    test_path("reporters/successes.R")
  )
  # and cleans up testthat-problems
  expect_false(file.exists(test_path("testthat-problems.rds")))
})

test_that("shows warnings when not on CRAN", {
  withr::defer(unlink(test_path("testthat-problems.rds")))

  withr::local_options("NOT_CRAN" = "true")
  expect_snapshot_reporter(CheckReporter$new(), test_path("reporters/tests.R"))
})


test_that("generates informative snapshot hints", {
  withr::local_envvar(GITHUB_ACTIONS = "false", CI = "false")
  expect_snapshot(base::writeLines(snapshot_check_hint()))

  withr::local_envvar(CI = "true")
  expect_snapshot(base::writeLines(snapshot_check_hint()))

  withr::local_envvar(
    GITHUB_ACTIONS = "true",
    GITHUB_REPOSITORY = "r-lib/testthat",
    GITHUB_RUN_ID = "123"
  )
  expect_snapshot(base::writeLines(snapshot_check_hint()))
})
