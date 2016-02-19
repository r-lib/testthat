context("expect_identical")

test_that("useful message if objects equal but not identical", {
  f <- function() x
  g <- function() x

  expect_failure(expect_identical(f, g), "not identical")
})

