context("expect-reference")

test_that("can check for references", {
  x1 <- 1:10
  x2 <- x1
  y <- 1:10

  expect_success(expect_reference(x1, x2))
  expect_failure(expect_reference(x1, y))
})
