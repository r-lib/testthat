test_that("environment has package name", {
  expect_equal(methods::getPackageName(test_env("testthat")), "testthat")
  expect_equal(methods::getPackageName(topenv()), "testthat")
})

setClass("MyClass")
test_that("Cannot create S4 class without special behaviour", {
  expect_error(setClass("MyClass2"), NA)
})
