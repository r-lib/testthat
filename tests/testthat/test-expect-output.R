context("expect_output")

f <- function() NULL
g <- function() cat("!")

test_that("expect = NA checks for no output", {
  expect_success(expect_output(f(), NA))
  expect_failure(expect_output(g(), NA), "produced output")
})

test_that("expect = NULL checks for some output", {
  expect_failure(expect_output(f(), NULL), "didn't produce output")
  expect_success(expect_output(g(), NULL))
})

test_that("expect = string checks for match", {
  expect_success(expect_output(g(), "!"))
  expect_failure(expect_output(g(), "x"), "does not match 'x'")
})
