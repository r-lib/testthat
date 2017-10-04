context("expect-output-file")


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

test_that("expect_output_file updates by default", {
  file <- tempfile()
  write_lines("Hi!", file)
  expect_failure(expect_output_file(cat("oops"), file, update = FALSE))

  expect_equal(read_lines(file), "Hi!")
  expect_failure(expect_output_file(cat("oops"), file, update = TRUE))
  expect_success(expect_output_file(cat("oops"), file))
})
