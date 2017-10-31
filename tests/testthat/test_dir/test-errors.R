context("error")

test_that("simple", {
  stop("argh")
})

test_that("after one success", {
  expect_true(TRUE)
  stop("argh")
  expect_true(TRUE)
})

test_that("after one failure", {
  expect_true(FALSE)
  stop("argh")
})

test_that("in the test", {
  expect_true(stop("Argh"))
})

test_that("in expect_error", {
  expect_error(stop("Argh"))
})
