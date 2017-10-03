context("expect_output")

f <- function() NULL
g <- function() cat("!")

test_that("expect = NA checks for no output", {
  expect_success(expect_output(f(), NA))
  expect_failure(expect_output(g(), NA), "produced output")
})

test_that("expect = NULL checks for some output", {
  expect_failure(expect_output(f(), NULL), "produced no output")
  expect_success(expect_output(g(), NULL))
})

test_that("expect = string checks for match", {
  expect_success(expect_output(g(), "!"))
  expect_failure(expect_output(g(), "x"), 'does not match "x"')
  expect_failure(expect_output("a", "x"), 'produced no output')
})

test_that("multiline outputs captures and matches", {
  expect_success(expect_output(cat("1\n2"), "1\n2"))
})

test_that("... passed on to grepl", {
  expect_success(expect_output(print("X"), "x", ignore.case = TRUE))
})

test_that("returns first argument", {
  expect_equal(expect_output(1, NA), 1)
})

# expect_output_file ------------------------------------------------------

test_that("expect_output_file uses specified width", {
  old <- options(width = 20)
  on.exit(options(old), add = TRUE)

  x <- 1:100
  expect_output_file(print(x), "width-80.txt")
})

test_that("expect_output_file creates file on first run", {
  file <- tempfile()
  expect_success(expect_output_file(cat("ok!\n"), file))
  expect_true(file.exists(file))
})

test_that("expect_output_file works, also with incomplete last line", {
  file <- tempfile()
  write_lines("Hi!", file)
  expect_success(expect_output_file(cat("Hi!"), file))
  expect_success(expect_output_file(cat("Hi!\n"), file))
  expect_failure(expect_output_file(cat("Hi!\n\n"), file))
  expect_failure(expect_output_file(cat("oops"), file))
})

test_that("expect_output_file can update file but does not by default", {
  file <- tempfile()
  write_lines("Hi!", file)
  expect_failure(expect_output_file(cat("oops"), file))
  expect_equal(read_lines(file), "Hi!")
  expect_failure(expect_output_file(cat("oops"), file, update = TRUE))
  expect_success(expect_output_file(cat("oops"), file))
})
