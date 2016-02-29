context("expect_that")

test_that("expect_that returns the input value", {
  res <- expect_true(TRUE)
  expect_equal(res, TRUE)
})
