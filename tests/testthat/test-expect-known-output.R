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

test_that("works in non-UTF-8 locale", {
  text <- c("\u00fc", "\u2a5d", "\u6211", "\u0438")
  file <- tempfile()
  write_lines(text, file)

  expect_success(expect_known_output(cat(text, sep = "\n"), file, update = FALSE))
  withr::with_locale(
    c(LC_CTYPE = "C"),
    {
      expect_false(l10n_info()$`UTF-8`)
      expect_success(expect_known_output(cat(text, sep = "\n"), file, update = FALSE))
    }
  )
})

test_that("Warning for non-UTF-8 reference files", {
  x <- "\xe9\xe1\xed\xf6\xfc"
  Encoding(x) <- "latin1"

  tmp <- tempfile()
  on.exit(unlink(tmp), add = TRUE)
  writeBin(x, tmp)

  expect_failure(
    expect_warning(expect_known_output("foobar", tmp, update = FALSE))
  )
})
