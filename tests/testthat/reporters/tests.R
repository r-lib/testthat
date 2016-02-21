context("One")

test_that("Success", {
  succeed()
})

test_that("Failure", {
  fail()
})

test_that("Failure loop", {
  for (i in 1:2) {
    expect_equal(i, 2)
  }
})


test_that("Error", {
  f <- function() {g()}
  g <- function() {h()}
  h <- function() {stop("!")}

  f()
})

context("Two")

test_that("Skip", {
  f <- function() {skip("skip")}
  f()
})
