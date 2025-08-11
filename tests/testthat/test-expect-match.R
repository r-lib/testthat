test_that("generates useful failure messages", {
  local_reproducible_output(unicode = TRUE)

  zero <- character(0)
  expect_snapshot_failure(expect_match(zero, 'asdf'))

  one <- "bcde"
  expect_snapshot_failure(expect_match(one, 'asdf'))

  many <- c("a", "a", "b")
  expect_snapshot_failure(expect_match(many, "a"))
  expect_snapshot_failure(expect_match(many, "c", all = FALSE))
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
  expect_snapshot_failure(expect_match("\\s", "\\s"))
  expect_success(expect_match("\\s", "\\s", fixed = TRUE))

  expect_snapshot_failure(expect_match("test", "TEST"))
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
