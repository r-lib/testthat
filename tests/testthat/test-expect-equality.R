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

test_that("% is not treated as sprintf format specifier (#445)", {
  expect_failure(expect_equal("+", "%"))
  expect_failure(expect_equal("%", "+"))
  expect_equal("%", "%")
})

test_that("attributes for object (#452)", {
  oops <- structure(0, oops = "oops")
  expect_equal(oops, oops)
  expect_failure(expect_equal(oops, 0))
  expect_equal(as.numeric(oops), 0)
})

test_that("expect_setequal as expected", {
  expect_success(expect_setequal(1:2, 2:1))
  expect_success(expect_setequal(c("MALE", "FEMALE"), c("FEMALE", "MALE")))
  expect_failure(expect_setequal(1:3, 1:2))
  expect_failure(expect_setequal(c("MALE", "FEMALE"), c("BOY", "GIRL")))
})
