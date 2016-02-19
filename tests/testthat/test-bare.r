context("Bare expectations")

expect_equal(2, 2)
expect_true(TRUE)
expect_error(stop("!"))

expect_error(expect_false(FALSE), NA)
expect_error(expect_false(TRUE))
