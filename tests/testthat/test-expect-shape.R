test_that("shape computed correctly", {
  # equivalent to expect_length
  expect_success(expect_shape(1, length = 1))
  expect_snapshot_failure(expect_shape(1, length = 2))
  expect_success(expect_shape(1:10, length = 10))
  expect_success(expect_shape(letters[1:5], length = 5))

  # testing dim()
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), dim = c(5L, 4L)))
  expect_snapshot_failure(expect_shape(matrix(nrow = 6, ncol = 3), dim = c(6L, 2L)))
  expect_snapshot_failure(expect_shape(matrix(nrow = 6, ncol = 3), dim = c(7L, 3L)))
  expect_success(expect_shape(data.frame(1:10, 11:20), dim = c(10, 2)))
  expect_success(expect_shape(array(dim = 1:3), dim = 1:3))

  # testing nrow=
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), nrow = 5L))
  expect_snapshot_failure(expect_shape(matrix(nrow = 5, ncol = 5), nrow = 6L))
  expect_success(expect_shape(data.frame(1:10, 11:20), nrow = 10L))

  # testing ncol=
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), ncol = 4L))
  expect_snapshot_failure(expect_shape(matrix(nrow = 5, ncol = 5), ncol = 7L))
  expect_success(expect_shape(data.frame(1:10, 11:20), ncol = 2L))
})

test_that("uses S4 dim method", {
  A <- setClass("ExpectShapeA", slots = c(x = "numeric", y = "numeric"))
  setMethod("dim", "ExpectShapeA", function(x) 8:10)
  expect_success(expect_shape(A(x = 1:9, y = 3), dim = 8:10))
})

test_that("returns input", {
  x <- list(1:10, letters)
  out <- expect_shape(x, length = 2)
  expect_identical(out, x)
})

test_that("at least one argument is required", {
  err_msg <- "Exactly one of `length`, `nrow`, `ncol`, or `dim` must be provided."
  expect_snapshot(expect_shape(1:10), error = TRUE) # no args
  expect_snapshot(expect_shape(1:10, 2), error = TRUE) # no named args
  expect_snapshot(expect_shape(1:10, nrow = 1L, ncol = 2L), error = TRUE) # multiple named args
})
