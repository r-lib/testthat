context("Compare")

test_that("Equal strings with different attributes are not equal", {
  expect_false(compare(structure("text", y = "foo"), "text")$equal)
})

test_that("different types of missing values are not equal", {
  expect_false(compare(NA, NA_character_)$equal)
})

test_that("equal if both missing or both the same", {
  expect_true(compare(NA_character_, NA_character_)$equal)
  expect_true(compare("ABC", "ABC")$equal)

  expect_false(compare("ABC", NA_character_)$equal)
  expect_false(compare(NA_character_, "ABC")$equal)
})
