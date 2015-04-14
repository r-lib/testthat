context("Bare expectations")

expect_that(1, equals(1))
expect_equal(2, 2)

expect_that(2, is_less_than(3))
expect_that(3, is_more_than(2))

expect_more_than(3, 2)
expect_less_than(2, 3)

# test_that("Error", {
#   stop("!")
# })
#
# test_that("Failure", {
#   expect_true(FALSE)
# })
#
# test_that("Skip", {
#   skip("Abc")
# })
