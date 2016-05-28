context("test_path")

test_that("throws error if file doesn't exist", {
  expect_error(test_path("XXXX"), "doesn't exist")
})

test_that("returns local path when called in tests", {
  expect_equal(test_path("test-test-path.R"), "test-test-path.R")
})

test_that("returns full path when called outside tests", {
  old <- setwd("test-path-present")
  on.exit(setwd(old))

  expect_equal(test_path("empty"), "tests/testthat/empty")
})

test_that("throws error if can't find tests/testthat", {
  old <- setwd("test-path-missing")
  on.exit(setwd(old))

  expect_error(test_path("empty"), "Can't find `tests/testthat/`")

})
