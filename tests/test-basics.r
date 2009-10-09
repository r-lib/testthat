context("Basic tests")

test_that("logical tests act as expected", {
  expect_that(TRUE, is_true())
  expect_that(FALSE, is_false())
})

test_that("equality holds", {
  expect_that(5, equals(5))
  expect_that(10, is_identical_to(10))
})