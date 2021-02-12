local_edition(2)

# expect_known_output -----------------------------------------------------

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
  skip_on_cran()
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

  suppressWarnings(
    expect_failure(
      expect_known_output("foobar", tmp, update = FALSE)
    )
  )
})


# expect_known_value ------------------------------------------------------


test_that("correctly matches to a file", {
  x <- 1
  expect_success(expect_known_value(x, "one.rds"))

  x <- 2
  expect_failure(expect_known_value(x, "one.rds", update = FALSE))
})

test_that("first run is successful", {
  expect_success(
    expect_warning(
      expect_known_value(2, "two.rds"),
      "Creating reference"
    )
  )
  unlink("two.rds")
})

test_that("equal_to_ref does not overwrite existing", {
  tmp_rds <- tempfile(fileext=".rds")
  on.exit(unlink(tmp_rds))
  ref_obj1 <- 1:3
  ref_obj2 <- 2:4
  saveRDS(ref_obj1, tmp_rds)

  expect_success(expect_equal_to_reference(ref_obj1, tmp_rds))

  # Failure does not update object
  expect_failure(expect_equal_to_reference(ref_obj2, tmp_rds))
  expect_equal(readRDS(tmp_rds), ref_obj1)

  # Now failure does update object
  expect_failure(expect_equal_to_reference(ref_obj2, tmp_rds, update=TRUE))
  expect_success(expect_equal_to_reference(ref_obj2, tmp_rds))
})

test_that("serializes to version 2 by default", {
  skip_if(getRversion() < 3.5)
  tmp_rds <- tempfile(fileext = ".rds")
  on.exit(unlink(tmp_rds))

  expect_warning(
    expect_known_value("a", tmp_rds),
    "Creating reference"
  )

  expect_identical(tools:::get_serialization_version(tmp_rds)[[1]], 2L)
})

test_that("version 3 is possible", {
  skip_if(getRversion() < 3.5)
  tmp_rds <- tempfile(fileext = ".rds")
  on.exit(unlink(tmp_rds))

  expect_warning(
    expect_known_value("a", tmp_rds, version = 3),
    "Creating reference"
  )

  expect_identical(tools:::get_serialization_version(tmp_rds)[[1]], 3L)
})

# expect_known_hash -------------------------------------------------------

test_that("empty hash succeeds with warning", {
  expect_success(
    expect_warning(
      expect_known_hash(1:10),
      "No recorded hash"
    )
  )
})

test_that("only succeeds if hash is correct", {
  expect_success(expect_known_hash(1:10, "c08951d2c2"))
  expect_failure(expect_known_hash(1:10, "c08951d2c3"))
})
