context("Failures")

test_that("false is not true", {
  expect_that(FALSE, is_true())
})

test_that("true is not false", {
  expect_that(TRUE, is_false())
})