context("context1")

test_that("dummy1", expect_true(TRUE))
test_that("dummy2", expect_true(TRUE))

context("context2")

test_that("A passing test", expect_true(TRUE))

test_that("A failing test", expect_true(FALSE))

test_that("A crashing test", {
  stop('argh')
  expect_true(TRUE)
})
