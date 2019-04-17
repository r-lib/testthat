context("test-expect-vector")

test_that("basic properties upheld", {
  skip_if_not_installed("vctrs", "0.1.0.9002")

  expect_success(expect_vector(1:10, size = 10))
  expect_failure(expect_vector(1:10, size = 5))
})
