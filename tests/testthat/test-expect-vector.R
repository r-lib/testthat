context("test-expect-vector")

test_that("basic properties uphelp", {
  expect_success(expect_vector(1:10, size = 10))
  expect_failure(expect_vector(1:10, size = 5))
})
