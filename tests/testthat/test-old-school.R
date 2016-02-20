context("old-school expectations")

test_that("old school logical works", {
  expect_success(expect_that(TRUE, is_true()))
  expect_success(expect_that(FALSE, is_false()))
})

test_that("old school types still work", {
  expect_success(expect_that(1L, is_a("integer")))
  expect_success(expect_that(NULL, is_null()))
})

test_that("old school names still work", {
  expect_success(expect_that("a", has_names(NULL)))
})
