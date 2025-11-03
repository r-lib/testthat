test_that("basic properties upheld", {
  skip_if_not_installed("vctrs", "0.1.0.9002")

  expect_success(expect_vector(1:10, size = 10))

  x <- 1:10
  expect_snapshot_failure(expect_vector(x, size = 5))

  y <- NULL
  expect_snapshot_failure(expect_vector(y))
})

test_that("expect_vector validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_vector(1:5, size = "large")
  })
})
