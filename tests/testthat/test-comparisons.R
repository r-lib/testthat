context("expect-comparisons")

test_that("basic comparisons work", {
  expect_success(expect_lt(10, 11))
  expect_failure(expect_lt(10, 10))
  expect_success(expect_lte(10, 10))

  expect_success(expect_gt(11, 10))
  expect_failure(expect_gt(10, 10))
  expect_success(expect_gte(10, 10))
})

test_that("comparisons with Inf work", {
  expect_success(expect_lt(10, Inf))
  expect_failure(expect_lt(Inf, Inf))
  expect_success(expect_lte(Inf, Inf))

  expect_success(expect_gt(Inf, 10))
  expect_failure(expect_gt(Inf, Inf))
  expect_success(expect_gte(Inf, Inf))
})

test_that("comparisons with NA work", {
  expect_failure(expect_lt(10, NA_real_))
  expect_failure(expect_lt(NA_real_, 10))
  expect_failure(expect_lt(NA_real_, NA_real_))
  expect_failure(expect_lte(NA_real_, NA_real_))

  expect_failure(expect_gt(10, NA_real_))
  expect_failure(expect_gt(NA_real_, 10))
  expect_failure(expect_gt(NA_real_, NA_real_))
  expect_failure(expect_gte(NA_real_, NA_real_))
})
