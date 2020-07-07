test_that("sets topenv", {
  expect_identical(topenv(), getNamespace("testthat"))
  expect_equal(methods::getPackageName(topenv()), "testthat")
})

test_that("can filter test scripts", {
  x <- c("test-a.R", "test-b.R", "test-c.R")
  expect_equal(filter_test_scripts(x), x)
  expect_equal(filter_test_scripts(x, "a"), x[1])
  expect_equal(filter_test_scripts(x, "a", invert = TRUE), x[-1])

  # Strips prefix/suffix
  expect_equal(filter_test_scripts(x, "test"), character())
  expect_equal(filter_test_scripts(x, ".R"), character())
})

