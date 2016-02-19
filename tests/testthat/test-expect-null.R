context("expect_null")

test_that("expect_null works", {
  expect_success(expect_null(NULL))
  expect_failure(expect_null(1L))
  expect_failure(expect_null(environment()))
})
