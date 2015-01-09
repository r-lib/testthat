context("Environment")

env <- new.env()

setClass("MyClass", where = env)

test_that("Cannot create S4 class without special behaviour", {
  setClass("MyClass2", where = env)

})
