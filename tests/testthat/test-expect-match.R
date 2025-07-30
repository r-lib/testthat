test_that("generates useful failure messages", {
  zero <- character(0)
  expect_snapshot_failure(expect_match(zero, 'asdf'))

  one <- "bcde"
  expect_snapshot_failure(expect_match(one, 'asdf'))

  many <- letters[1:5]
  expect_snapshot_failure(expect_match(many, 'asdf'))
})

test_that("extra arguments passed onto grepl", {
  expect_failure(expect_match("\\s", "\\s"))
  expect_success(expect_match("\\s", "\\s", fixed = TRUE))

  expect_failure(expect_match("test", "TEST"))
  expect_success(expect_match("test", "TEST", ignore.case = TRUE))
})

test_that("expect_no_match works", {
  expect_success(expect_no_match("[a]", "[b]"))
  expect_success(expect_no_match("[a]", "[b]", fixed = TRUE))

  x <- "te*st"
  expect_snapshot_failure(expect_no_match(x, "e*", fixed = TRUE))
  x <- "test"
  expect_snapshot_failure(expect_no_match(x, "TEST", ignore.case = TRUE))
})

test_that("empty string is never a match", {
  expect_success(expect_no_match(character(), "x"))
})
