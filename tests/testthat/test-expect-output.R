context("expect_output")

f <- function() NULL
g <- function() cat("!")

test_that("expect = NA checks for no output", {
  expect_success(expect_output(f(), NA))
  expect_failure(expect_output(g(), NA), "produced output")
})

test_that("expect = NULL checks for some output", {
  expect_failure(expect_output(f(), NULL), "produced no output")
  expect_success(expect_output(g(), NULL))
})

test_that("expect = string checks for match", {
  expect_success(expect_output(g(), "!"))
  expect_failure(expect_output(g(), "x"), 'does not match "x"')
  expect_failure(expect_output("a", "x"), 'produced no output')
})

test_that("multiline outputs captures and matches", {
  expect_success(expect_output(cat("1\n2"), "1\n2"))
})

test_that("... passed on to grepl", {
  expect_success(expect_output(print("X"), "x", ignore.case = TRUE))
})
