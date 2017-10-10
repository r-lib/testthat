context("expect_known_output")

test_that("uses specified width", {
  old <- options(width = 20)
  on.exit(options(old), add = TRUE)

  x <- 1:100
  expect_known_output(print(x), "width-80.txt")
})

test_that("creates file on first run", {
  file <- tempfile()
  expect_success(
    expect_warning(
      expect_known_output(cat("ok!\n"), file),
      "Creating reference"
    )
  )

  expect_true(file.exists(file))
})

test_that("igores incomplete last line", {
  file <- tempfile()
  write_lines("Hi!", file)
  expect_success(expect_known_output(cat("Hi!"), file))
  expect_success(expect_known_output(cat("Hi!\n"), file))
  expect_failure(expect_known_output(cat("Hi!\n\n"), file))
  expect_failure(expect_known_output(cat("oops"), file))
})

test_that("updates by default", {
  file <- tempfile()
  write_lines("Hi!", file)
  expect_failure(expect_known_output(cat("oops"), file, update = FALSE))

  expect_equal(read_lines(file), "Hi!")
  expect_failure(expect_known_output(cat("oops"), file, update = TRUE))
  expect_success(expect_known_output(cat("oops"), file))
})
