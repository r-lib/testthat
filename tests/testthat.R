library(testthat)
options(testthat.use_colours = FALSE)

test_that("can run test interactively", {
  expect_true(TRUE)
  expect_true(FALSE)
})

test_check("testthat")
