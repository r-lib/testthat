context('exception outside test')

expect_true(TRUE)

test_that("before", expect_true(TRUE))

expect_true(false)

stop('dying outside of tests')

test_that("after", expect_true(TRUE))
