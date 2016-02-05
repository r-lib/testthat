context("Return values")

test_that("return value from testtthat", {
  with_reporter("", success <- test_that("success", {}))
  expect_true(success)
  with_reporter("", error <- test_that("error", barf))
  expect_false(error)
  with_reporter("", failure <- test_that("failure", expect_true(FALSE)))
  expect_false(failure)
  with_reporter("", skip <- test_that("skip", skip("skipping")))
  expect_false(skip)
})
