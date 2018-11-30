context('exception outside test')

test_that("before", expect_true(TRUE))

stop('dying outside of tests')

test_that("after", expect_true(TRUE))
