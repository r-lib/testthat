test_that("basic report works", {
  withr::defer(file.remove(test_path("testthat-problems.rds")))
  expect_snapshot_reporter(CheckReporter$new())

  rds <- test_path("testthat-problems.rds")
  expect_true(file.exists(rds))
})

test_that("doesn't truncate long lines", {
  on.exit(unlink(test_path("testthat-problems.rds")))

  expect_snapshot_reporter(CheckReporter$new(), test_path("reporters/long-test.R"))
})

test_that("always shows summary", {
  on.exit(unlink(test_path("testthat-problems.rds")))

  expect_snapshot_reporter(CheckReporter$new(), test_path("reporters/successes.R"))
})

test_that("shows warnings when not on CRAN", {
  on.exit(unlink(test_path("testthat-problems.rds")))

  withr::local_options("NOT_CRAN" = "true")
  expect_snapshot_reporter(CheckReporter$new(), test_path("reporters/tests.R"))
})
