context("First context.")

test_that("Logical equivalence", {
  x <- TRUE
  expect_equal(x, TRUE)
})

test_that("Numerical equivalence", {
  x <- 1
  expect_equal(x, 1)
})

context("Second context.")

test_that("A passing test", {
  expect_equal(TRUE, TRUE)
})

test_that("A failing test", {
  expect_equal(TRUE, FALSE)
})
