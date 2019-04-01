test_that("old school logical works", {
  expect_warning(
    expect_success(expect_that(TRUE, is_true())),
    "deprecated")

  expect_warning(
    expect_success(expect_that(FALSE, is_false())),
    "deprecated")
})

test_that("old school types still work", {
  expect_success(expect_that(1L, is_a("integer")))
})

test_that("tidyverse conflicts throw warnings", {
  expect_warning(
    expect_that(NULL, is_null()),
    "deprecated"
  )

  expect_warning(
    expect_that("te*st", matches("e*", fixed = TRUE)),
    "deprecated"
  )
  expect_warning(
    expect_that("test", matches("TEST", ignore.case = TRUE)),
    "deprecated"
  )
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

test_that("old school output tests still work", {
  expect_success(expect_that(stop("!"), throws_error()))
  expect_success(expect_that(warning("!"), gives_warning()))
  expect_success(expect_that(message("!"), shows_message()))
  expect_success(expect_that(print("!"), prints_text()))
})
