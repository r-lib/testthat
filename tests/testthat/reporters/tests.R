context("One")

test_that("Success", {
  succeed()
})

test_that("Failure", {
  fail()
})

test_that("Error", {
  stop("!")
})

context("Two")

test_that("Skip", {
  skip("skip")
})
