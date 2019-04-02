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
