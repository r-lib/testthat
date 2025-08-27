test_that("useful failure if empty", {
  zero <- character(0)
  expect_snapshot_failure(expect_match(zero, 'asdf'))
})

test_that("useful failure messages for scalars", {
  local_reproducible_output(unicode = TRUE)

  one <- "bcde"
  expect_snapshot_failure(expect_match(one, 'asdf'))
  expect_snapshot_failure(expect_match(one, 'asdf', fixed = TRUE))
})

test_that("useful failure messages for vectors", {
  local_reproducible_output(unicode = TRUE)

  many <- c("a", "a", "b")
  expect_snapshot_failure(expect_match(many, "a"))
  expect_snapshot_failure(expect_match(many, "c", all = FALSE))

  paragraph <- c("This is a multiline\nparagraph.", "Second element.")
  expect_snapshot_failure(expect_match(paragraph, "paragraph"))

  na <- c("NA", NA)
  expect_snapshot_failure(expect_match(na, "NA"))
})

test_that("expect_match validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_match(1)
    expect_match("x", 1)
    expect_match("x", "x", fixed = 1)
    expect_match("x", "x", perl = 1)
    expect_match("x", "x", all = 1)
  })
})

test_that("expect_no_match validates its inputs", {
  expect_snapshot(error = TRUE, {
    expect_no_match(1, "x")
    expect_no_match("x", 1)
    expect_no_match("x", "x", fixed = 1)
    expect_no_match("x", "x", perl = 1)
    expect_no_match("x", "x", all = 1)
  })
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
