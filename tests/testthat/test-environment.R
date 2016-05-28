context("Environment")

env <- new.env()
setClass("MyClass", where = env)

test_that("Cannot create S4 class without special behaviour", {
  expect_error(setClass("MyClass2", where = env), NA)
})

test_that("can't access variables from other tests (1)", {
  a <- 10
})

test_that("can't access variables from other tests (2)", {
  expect_false(exists("a"))
})
