context("expect_length")

test_that("fails if not a vector", {
  expect_failure(expect_length(environment(), 1), "not a vector")
})

test_that("length computed correctly", {
  expect_success(expect_length(1, 1))
  expect_failure(expect_length(1, 2))
})

test_that("returns input", {
  x <- list(1:10, letters)
  out <- expect_length(x, 2)
  expect_identical(out, x)
})
