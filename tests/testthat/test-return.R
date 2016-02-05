context("Return values")

test_that("return value from test_that", {
  with_reporter("", success <- test_that("success", {}))
  expect_true(success)
  with_reporter("", success <- test_that("success", succeed()))
  expect_true(success)
  with_reporter("", success <- test_that("success", expect(TRUE, "Yes!")))
  expect_true(success)

  with_reporter("", error <- test_that("error", barf))
  expect_false(error)

  with_reporter("", failure <- test_that("failure", expect_true(FALSE)))
  expect_false(failure)
  with_reporter("", failure <- test_that("failure", fail()))
  expect_false(failure)
  with_reporter("", success <- test_that("failure", expect(FALSE, "No!")))
  expect_false(failure)

  with_reporter("", skip <- test_that("skip", skip("skipping")))
  expect_false(skip)
})
