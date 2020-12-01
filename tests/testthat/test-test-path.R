test_that("returns local path when called in tests", {
  expect_equal(test_path("test-test-path.R"), "test-test-path.R")

  # even if path doesn't (yet) exists
  expect_equal(test_path("xxxx"), "xxxx")
})

test_that("returns local path when called from tools::testInstalledPackages", {
  old <- setwd("test-path-installed/testthat-tests/testthat")
  on.exit(setwd(old))

  expect_equal(test_path("test-test-path.R"), "test-test-path.R")
  expect_equal(test_path("xxxx"), "xxxx")
})

test_that("returns full path when called outside tests", {
  withr::local_dir(test_path("test-path-present"))
  withr::local_envvar("TESTTHAT" = "false")

  expect_equal(test_path("empty"), "tests/testthat/empty")
  # even when file doesn't exist
  expect_equal(test_path("xxx"), "tests/testthat/xxx")
})

test_that("throws error if can't find tests/testthat", {
  withr::local_dir(test_path("test-path-missing"))
  withr::local_envvar("TESTTHAT" = "false")

  expect_error(test_path("empty"), "Can't find `tests/testthat/`")
})

test_that("test_path() always returns a path",{
  expect_equal(test_path(), ".")
})
