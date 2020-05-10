# the objective is to test what happens if some code fails outside of tests
# i.e. not inside a test_that() call.

test_that("before", expect_true(TRUE))

stop('dying outside of tests')

test_that("after", expect_true(TRUE))
