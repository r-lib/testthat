context("expect_known_value")

test_that("correctly matches to a file", {
  expect_success(expect_known_value(1, "one.rds"))
  expect_failure(expect_known_value(2, "one.rds"))
})

test_that("first run is successful", {
  expect_success(expect_known_value(1, "two.rds"))
  unlink("two.rds")
})
