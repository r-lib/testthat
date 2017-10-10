context("expect_known_value")

test_that("correctly matches to a file", {
  x <- 1
  expect_success(expect_known_value(x, "one.rds"))

  x <- 2
  expect_failure(expect_known_value(x, "one.rds", update = FALSE))
})

test_that("first run is successful", {
  expect_success(
    expect_warning(
      expect_known_value(2, "two.rds"),
      "Creating reference"
    )
  )
  unlink("two.rds")
})
