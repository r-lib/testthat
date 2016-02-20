context("expect_that")

test_that("expect_that returns the result", {
  res <- expect_true(TRUE)
  expect_type(res, "list")
  expect_equal(expectation_type(res), "success")
})
