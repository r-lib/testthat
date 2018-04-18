context("expect_nrow")

test_that("NROW computed correctly", {
  expect_success(expect_nrow(1, 1))
  expect_success(expect_nrow(1:10, 10))
  expect_success(expect_nrow(letters[1:5], 5))
  expect_success(expect_nrow(data.frame(a=1:10, b=11:20), 10))
})

test_that("failure message", {
  expect_failure(expect_nrow(1, 2), "has NROW 1, not NROW 2.")
})

test_that("returns input", {
  x <- data.frame(a=1:2, b=11:12)
  out <- expect_nrow(x, 2)
  expect_identical(out, x)
})
