context("expect-comparisons")

test_that("basic comparisons work", {
  expect_success(expect_lt(10, 11))
  expect_failure(expect_lt(10, 10))
  expect_success(expect_lte(10, 10))
})
