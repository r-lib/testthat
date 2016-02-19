context("not")

test_that("not(throws_error) fails with errors", {
  expect_warning(res <- not(throws_error())(stop()))
  expect_equal(expectation_type(res), "failure")

  expect_warning(res <- not(throws_error("Yes"))(stop("Yes")))
  expect_equal(expectation_type(res), "failure")

  expect_warning(res <- not(throws_error("Yes"))(stop("No")))
  expect_equal(expectation_type(res), "success")
})

test_that("not(gives_warning) is the opposite of gives_warning", {
  h <- function() {
    warning("a")
  }

  expect_warning(res <- not(gives_warning())(h()))
  expect_equal(expectation_type(res), "failure")

  expect_warning(res <- not(gives_warning("a"))(h()))
  expect_equal(expectation_type(res), "failure")

  expect_warning(res <- not(gives_warning("c"))(h()))
  expect_equal(expectation_type(res), "success")
})

test_that("not(shows_message) is the opposite of shows_message", {
  h <- function() {
    message("a")
  }

  expect_warning(res <- not(shows_message())(h()))
  expect_equal(expectation_type(res), "failure")

  expect_warning(res <- not(shows_message("a"))(h()))
  expect_equal(expectation_type(res), "failure")

  expect_warning(res <- not(shows_message("c"))(h()))
  expect_equal(expectation_type(res), "success")
})
