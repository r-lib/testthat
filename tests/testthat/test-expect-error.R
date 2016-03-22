context("expect_error")

test_that("regexp = NULL checks for presence of error", {
  expect_success(expect_error(stop()))
  expect_failure(expect_error(null()), "did not throw an error")
})

test_that("regexp = NA checks for absence of error", {
  expect_success(expect_error(null(), NA))
  expect_failure(expect_error(stop("Yes"), NA))
})

test_that("regexp = string matches for error message", {
  expect_success(expect_error(stop("Yes"), "Yes"))
  expect_failure(expect_error(stop("Yes"), "No"))
  expect_failure(expect_error("OK", "No"), "did not throw an error")
})

test_that("... passed on to grepl", {
  expect_success(expect_error(stop("X"), "x", ignore.case = TRUE))
})
