# test_dir() --------------------------------------------------------------

test_that("runs all tests and records output", {
  res <- test_dir(test_path("test_dir"), reporter = "silent")

  df <- as.data.frame(res)
  df$user <- df$system <- df$real <- df$result <- NULL

  verify_output(test_path("test-test-directory.txt"), print(df), width = 200)
})

test_that("complains if no files", {
  path <- tempfile()
  dir.create(path)

  expect_error(test_dir(path), "test files")
})

test_that("can control if failures generate errors", {
  test_error <- function(...) {
    test_dir(test_path("test-error"), reporter = NULL, ...)
  }

  expect_error(test_error(stop_on_failure = TRUE), "Test failures")
  expect_error(test_error(stop_on_failure = FALSE), NA)
})

test_that("can control if warnings errors", {
  test_warning <- function(...) {
    test_dir(test_path("test-warning"), reporter = NULL, ...)
  }

  expect_error(test_warning(stop_on_warning = TRUE), "Tests generated warnings")
  expect_error(test_warning(stop_on_warning = FALSE), NA)
})

# test_file ---------------------------------------------------------------

test_that("can test single file", {
  out <- test_file(test_path("test_dir/test-basic.R"), reporter = NULL)
  expect_length(out, 5)
})

test_that("complains if file doesn't exist", {
  expect_error(test_file("DOESNTEXIST"), "does not exist")
})

# helpers -----------------------------------------------------------------

test_that("can filter test scripts", {
  x <- c("test-a.R", "test-b.R", "test-c.R")
  expect_equal(filter_test_scripts(x), x)
  expect_equal(filter_test_scripts(x, "a"), x[1])
  expect_equal(filter_test_scripts(x, "a", invert = TRUE), x[-1])

  # Strips prefix/suffix
  expect_equal(filter_test_scripts(x, "test"), character())
  expect_equal(filter_test_scripts(x, ".R"), character())
})

