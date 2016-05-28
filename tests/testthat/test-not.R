context("not")

test_that("not(throws_error) fails with errors", {
  expect_warning(expect_failure(not(throws_error())(stop())))
  expect_warning(expect_failure(not(throws_error("Yes"))(stop("Yes"))))
  expect_warning(expect_success(not(throws_error("Yes"))(stop("No"))))
})

test_that("not(gives_warning) is the opposite of gives_warning", {
  h <- function() {
    warning("a")
  }

  expect_warning(expect_failure(not(gives_warning())(h())))
  expect_warning(expect_failure(not(gives_warning("a"))(h())))
  expect_warning(expect_success(not(gives_warning("c"))(h())))
})

test_that("not(shows_message) is the opposite of shows_message", {
  h <- function() {
    message("a")
  }

  expect_warning(expect_failure(not(shows_message())(h())))
  expect_warning(expect_failure(not(shows_message("a"))(h())))
  expect_warning(expect_success(not(shows_message("c"))(h())))
})
