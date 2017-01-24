context("expect_length")

test_that("fails if not a vector or object with defined length method", {
  expect_failure(expect_length(environment(), 1),
    "does not have a defined length")
})

test_that("length computed correctly", {
  expect_success(expect_length(1, 1))
  expect_failure(expect_length(1, 2), "has length 1, not length 2.")
  expect_success(expect_length(1:10, 10))
  expect_success(expect_length(letters[1:5], 5))
})

test_that("uses S4 length method, if exists", {
  # A has no length method defined
  A <- setClass("ExpectLengthA", slots=c(x="numeric"))
  expect_failure(expect_length(A(x=1:5), 5),
    "does not have a defined length")
  # Even though 'length' does not fail on an A
  expect_identical(length(A(x=1:5)), 1L)

  # B does has a length method defined
  B <- setClass("ExpectLengthB", slots=c(x="numeric"))
  setMethod("length", "ExpectLengthB", function (x) 5L)
  expect_success(expect_length(B(x=1:8), 5))

  # C does not, but it inherits from something that does
  C <- setClass("ExpectLengthC", contains="list")
  expect_success(expect_length(C(), 0))
  expect_success(expect_length(C(1:10), 10))

  # D does not explicitly have one, but it inherits from B, which does
  D <- setClass("ExpectLengthD", contains="ExpectLengthB")
  expect_success(expect_length(D(x=1:8), 5))
})

test_that("returns input", {
  x <- list(1:10, letters)
  out <- expect_length(x, 2)
  expect_identical(out, x)
})
