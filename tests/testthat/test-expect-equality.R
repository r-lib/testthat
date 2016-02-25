context("expect-equality")

test_that("basically principles of equality hold", {
  expect_success(expect_equal(1, 1))
  expect_failure(expect_equal(1, 2))
})

test_that("expect_equivalent ignores attributes for integers", {
  x1 <- 1:10
  x2 <- structure(x1, a = 1, b = 2)

  expect_failure(expect_equal(x1, x2))
  expect_success(expect_equivalent(x1, x2))
})

test_that("expect_equivalent ignores attributes for characters", {
  x1 <- letters
  x2 <- structure(x1, a = 1, b = 2)

  expect_failure(expect_equal(x1, x2))
  expect_success(expect_equivalent(x1, x2))
})


test_that("useful message if objects equal but not identical", {
  f <- function() x
  g <- function() x

  expect_failure(expect_identical(f, g), "not identical")
})

