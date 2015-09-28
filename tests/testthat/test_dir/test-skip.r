context("skip")

test_that("Skips skip", {
  skip("Skipping to avoid certain failure")
  expect_true(FALSE)
})