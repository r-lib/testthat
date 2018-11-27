context("First context.")

test_that("Logical equivalence", {
  x <- TRUE
  expect_that(x, equals(TRUE))
})

test_that("Numerical equivalence", {
  x <- 1
  expect_that(x, equals(1))
})

context("Second context.")

test_that("A passing test", {
  expect_that(TRUE, equals(TRUE))
})

test_that("A failing test", {
  expect_that(TRUE, equals(FALSE))
})
