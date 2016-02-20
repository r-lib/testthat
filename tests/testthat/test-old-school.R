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

test_that("old school comparisons still work", {
  expect_success(expect_that(10, is_less_than(11)))
  expect_failure(expect_that(10, is_more_than(11)))
})

test_that("old school equality tests still work", {
  expect_success(expect_that(10, equals(10)))
  expect_success(expect_that(10, is_identical_to(10)))
  expect_success(expect_that(10, is_equivalent_to(10)))
})

test_that("old school reference equality test", {
  expect_success(expect_equal_to_reference(1, "one.rds"))
})

test_that("old school output tests still work", {
  expect_success(expect_that(stop("!"), throws_error()))
  expect_success(expect_that(warning("!"), gives_warning()))
  expect_success(expect_that(message("!"), shows_message()))
  expect_success(expect_that(print("!"), prints_text()))
})
