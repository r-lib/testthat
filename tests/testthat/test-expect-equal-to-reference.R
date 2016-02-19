context("expect_equal_to_reference")

test_that("expect_equal_to_reference correctly matches to a file", {
  expect_success(expect_equal_to_reference(1, "one.rds"))
  expect_failure(expect_equal_to_reference(2, "one.rds"))
})

test_that("first expect_equal_to_reference is successful", {
  expect_success(expect_equal_to_reference(1, "two.rds"))
  unlink("two.rds")
})
