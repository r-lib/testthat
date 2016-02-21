context("Expectations")

test_that("Success", {
  succeed()
})

test_that("Failure:1", {
  fail()
})
test_that("Failure:2a", {
  f <- function() fail()
  f()
})
test_that("Failure:2b", {
  expect_true(FALSE)
})

test_that("Failure:loop", {
  for (i in 1:2) {
    expect_equal(i, 2)
  }
})


context("Errors")

test_that("Error:1", {
  stop("stop")
})

test_that("Error:3", {
  f <- function() {g()}
  g <- function() {h()}
  h <- function() {stop("!")}

  f()
})

context("Skips")

test_that("Skip:1", {
  skip("skip")
})

test_that("Skip:2", {
  f <- function() {skip("skip")}
  f()
})
