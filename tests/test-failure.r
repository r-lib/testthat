context("Failures")

test_that("false is not true (should fail)", {
  expect_that(FALSE, is_true())
})

test_that("true is not false (should fail)", {
  expect_that(TRUE, is_false())
})