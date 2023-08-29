test_that("logical tests act as expected", {
  expect_true(TRUE)
  expect_false(FALSE)
})

test_that("logical tests ignore attributes", {
  expect_true(c(a = TRUE))
  expect_false(c(a = FALSE))
})

test_that("equality holds", {
  expect_equal(5, 5)
  expect_identical(10, 10)
})

test_that("can't access variables from other tests 2", {
  a <- 10
})

test_that("can't access variables from other tests 1", {
  expect_false(exists("a"))
})
