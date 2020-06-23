test_that("test1", expect_true(TRUE))
test_that("test2", expect_true(TRUE))

test_that("test-pass", expect_true(TRUE))

test_that("test-fail", expect_true(FALSE))

test_that("test-error", {
  stop('argh')
  expect_true(TRUE)
})
