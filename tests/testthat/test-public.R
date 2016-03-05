context("Testing non-exported functions")

test_that("test_check evaluates in package namespace", {
  expect_true(.function_not_exported())
})
