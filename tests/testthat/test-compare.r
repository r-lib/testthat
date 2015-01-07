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

test_that("equal if both missing or both the same (multiple values)", {
  expect_true(compare(c("ABC", NA), c("ABC", NA))$equal)

  expect_false(compare(c(NA, NA), c("ABC", NA))$equal)
  expect_false(compare(c("AB", NA), c("ABC", NA))$equal)
  expect_false(compare(c("AB", "AB"), c("ABC", "AB"))$equal)
})

test_that("computes correct number of mismatches", {
  comp <- compare(c("a","b","c"), c("c", "d", "e"))
  expect_match(comp$message, "3 string mismatches")
})

test_that("comparing character and non-character fails back to all.equal", {
  expect_match(compare("abc", 1)$message, "target is character")
})
