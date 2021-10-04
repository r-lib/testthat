test_that("shape computed correctly", {
  # equivalent to expect_length
  expect_success(expect_shape(1, 1))
  expect_failure(expect_shape(1, 2), "has length 1, not length 2.")
  expect_success(expect_shape(1:10, 10))
  expect_success(expect_shape(letters[1:5], 5))

  # testing dim()
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), c(5L, 4L)))
  expect_failure(expect_shape(matrix(nrow = 6, ncol = 3), c(6L, 2L)))
  expect_failure(expect_shape(matrix(nrow = 6, ncol = 3), c(7L, 3L)))
  expect_success(expect_shape(data.frame(1:10, 11:20), c(10, 2)))
  expect_success(expect_shape(array(dim = 1:3), 1:3))

  # testing nrow=
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), nrow = 5L))
  expect_failure(expect_shape(matrix(nrow = 5, ncol = 5), nrow = 6L))
  expect_success(expect_shape(data.frame(1:10, 11:20), nrow = 10L))

  # testing ncol=
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), ncol = 4L))
  expect_failure(expect_shape(matrix(nrow = 5, ncol = 5), ncol = 7L))
  expect_success(expect_shape(data.frame(1:10, 11:20), ncol = 2L))

  # testing nrow= and ncol=
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), nrow = 5L, ncol = 4L))
  expect_failure(expect_shape(matrix(nrow = 5, ncol = 5), nrow = 6L, ncol = 5L))
  expect_success(expect_shape(data.frame(1:10, 11:20), nrow = 10L, ncol = 2L))
  expect_success(expect_shape(array(dim = 5:7), nrow = 5L, ncol = 6L))

  # precedence of manual nrow/ncol over shape
  expect_success(expect_shape(matrix(nrow = 7, ncol = 10), 1:2, nrow = 7L))
  expect_success(expect_shape(matrix(nrow = 7, ncol = 10), 1:2, ncol = 10L))
})

test_that("uses S4 dim method", {
  A <- setClass("ExpectShapeA", slots = c(x = "numeric", y = "numeric"))
  setMethod("dim", "ExpectShapeA", function(x) 8:10)
  expect_success(expect_shape(A(x = 1:9, y = 3), 8:10))
})

test_that("returns input", {
  x <- list(1:10, letters)
  out <- expect_shape(x, 2)
  expect_identical(out, x)
})
