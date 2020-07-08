test_that("returns local path when called in tests", {
  expect_equal(
    test_path("test-test-path.R"),
    file.path(testing_directory(), "test-test-path.R")
  )

  # even if path doesn't (yet) exists
  expect_equal(
    test_path("xxxx"),
    file.path(testing_directory(), "xxxx")
  )
})

test_that("returns local path when called from tools::testInstalledPackages", {
  base <- test_path("test-path-installed/testthat-tests/testthat")
  withr::local_envvar(c(TESTTHAT_DIR = base))

  expect_equal(test_path("test-test-path.R"), file.path(base, "test-test-path.R"))
  expect_equal(test_path("xxxx"), file.path(base, "xxxx"))
})

test_that("returns full path when called outside tests", {
  withr::local_dir(test_path("test-path-present"))
  withr::local_envvar(c("TESTTHAT" = "false"))

  expect_equal(test_path("empty"), "tests/testthat/empty")
  # even when file doesn't exist
  expect_equal(test_path("xxx"), "tests/testthat/xxx")
})

test_that("throws error if can't find tests/testthat", {
  withr::local_dir(test_path("test-path-missing"))
  withr::local_envvar(c("TESTTHAT" = "false"))

  expect_error(test_path("empty"), "Can't find `tests/testthat/`")
})
