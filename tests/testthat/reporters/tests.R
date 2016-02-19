context("One")

test_that("Success", {
  succeed()
})

test_that("Failure", {
  fail()
})

context("Two")

test_that("Skip", {
  skip("skip")
})
