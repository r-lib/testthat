test_that("length computed correctly", {
  expect_success(expect_length(1, 1))
  expect_failure(expect_length(1, 2), "has length 1, not length 2.")
  expect_success(expect_length(1:10, 10))
  expect_success(expect_length(letters[1:5], 5))
})

test_that("uses S4 length method", {
  A <- setClass("ExpectLengthA", slots = c(x = "numeric", y = "numeric"))
  setMethod("length", "ExpectLengthA", function(x) 5L)
  expect_success(expect_length(A(x = 1:9, y = 3), 5))
})

test_that("returns input", {
  x <- list(1:10, letters)
  out <- expect_length(x, 2)
  expect_identical(out, x)
})

test_that("expect_length validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_length(1:5, "a")
  })
})


test_that("dim compared correctly", {
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), dim = c(5L, 4L)))
  expect_snapshot_failure(expect_shape(
    matrix(nrow = 6, ncol = 3),
    dim = c(6L, 2L)
  ))
  expect_snapshot_failure(expect_shape(
    matrix(nrow = 6, ncol = 3),
    dim = c(7L, 3L)
  ))
  expect_success(expect_shape(data.frame(1:10, 11:20), dim = c(10, 2)))
  expect_success(expect_shape(array(dim = 1:3), dim = 1:3))
  expect_snapshot_failure(expect_shape(array(dim = 1:3), dim = 1:2))
  expect_snapshot_failure(expect_shape(array(dim = 1:3), dim = 1:4))
  expect_success(expect_shape(array(integer()), dim = 0L))
  dd <- c(0L, 0L, 0L, 5L, 0L, 0L, 0L)
  expect_success(expect_shape(array(dim = dd), dim = dd))

  x <- cbind(1:2, 3:4)
  out <- expect_shape(x, dim = c(2L, 2L))
  expect_identical(out, x)
})

test_that("nrow compared correctly", {
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), nrow = 5L))
  expect_snapshot_failure(expect_shape(matrix(nrow = 5, ncol = 5), nrow = 6L))
  expect_success(expect_shape(data.frame(1:10, 11:20), nrow = 10L))
  expect_snapshot_failure(expect_shape(1, nrow = 1))
  expect_success(expect_shape(array(integer()), nrow = 0L))
  dd <- c(0L, 0L, 0L, 5L, 0L, 0L, 0L)
  expect_success(expect_shape(array(dim = dd), nrow = 0L))

  x <- cbind(1:2, 3:4)
  out <- expect_shape(x, dim = c(2L, 2L))
  expect_identical(out, x)
})

test_that("ncol compared correctly", {
  expect_success(expect_shape(matrix(nrow = 5, ncol = 4), ncol = 4L))
  expect_snapshot_failure(expect_shape(matrix(nrow = 5, ncol = 5), ncol = 7L))
  expect_success(expect_shape(data.frame(1:10, 11:20), ncol = 2L))
  expect_snapshot_failure(expect_shape(array(1), ncol = 1))
  expect_snapshot_failure(expect_shape(array(integer()), ncol = 0L))
  dd <- c(0L, 0L, 0L, 5L, 0L, 0L, 0L)
  expect_success(expect_shape(array(dim = dd), ncol = 0L))

  x <- cbind(1:2, 3:4)
  out <- expect_shape(x, dim = c(2L, 2L))
  expect_identical(out, x)
})

test_that("uses S3 dim method", {
  local_bindings(
    dim.testthat_expect_shape = function(x) 1:2,
    .env = globalenv()
  )
  x <- structure(integer(), class = "testthat_expect_shape")
  expect_success(expect_shape(x, dim = 1:2))
})

test_that("NA handling (e.g. dbplyr)", {
  local_bindings(
    dim.testthat_expect_shape_missing = function(x) c(NA_integer_, 10L),
    .env = globalenv()
  )
  x <- structure(integer(), class = "testthat_expect_shape_missing")

  expect_success(expect_shape(x, nrow = NA_integer_))
  expect_success(expect_shape(x, ncol = 10L))
  expect_success(expect_shape(x, dim = c(NA_integer_, 10L)))

  expect_snapshot_failure(expect_shape(x, nrow = 10L))
  expect_snapshot_failure(expect_shape(x, ncol = NA_integer_))
  expect_snapshot_failure(expect_shape(x, dim = c(10L, NA_integer_)))
})

test_that("uses S4 dim method", {
  A <- setClass("ExpectShapeA", slots = c(x = "numeric", y = "numeric"))
  setMethod("dim", "ExpectShapeA", function(x) 8:10)
  expect_success(expect_shape(A(x = 1:9, y = 3), dim = 8:10))
})

test_that("checks inputs arguments, ", {
  expect_snapshot(error = TRUE, {
    expect_shape(1:10)
    expect_shape(1:10, nrow = 1L, ncol = 2L)
    expect_shape(1:10, 2)
    expect_shape(array(1), nrow = "x")
    expect_shape(array(1), ncol = "x")
    expect_shape(array(1), dim = "x")
  })
})
