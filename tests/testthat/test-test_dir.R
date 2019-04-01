test_that("R_TESTS envar is unset", {
  expect_equal(Sys.getenv("R_TESTS"), "")
})

test_that("TESTHAT env var set to true", {
  expect_true(is_testing())
})

# https://github.com/r-lib/devtools/issues/2015
# test_that("TESTHAT_PKG env var set to the package being tested", {
#   expect_equal(testing_package(), "testthat")
# })

test_that("test_dir()", {
  res <- test_dir(test_path("test_dir"), reporter = "silent")

  df <- as.data.frame(res)
  df$user <- df$system <- df$real <- df$result <- NULL

  expect_known_value(df, "test_dir.rds")
})

test_that("test_dir() filter", {
  res <- test_dir("test_dir", reporter = "silent", filter = "basic|empty")
  df <- as.data.frame(res)
  expect_identical(unique(df$context), c("Basic", "empty"))
})

test_that("test_dir() helpers", {
  res <- test_dir("test_dir", reporter = "silent", filter = "helper")
  df <- as.data.frame(res)
  expect_true(all(!df$error & df$failed == 0))
})

test_that("filter_test_scripts() with tricky names", {
  files <- c(
    "test-basic.R", "test-blah.really.Rtrick.R", "test-hello.rtest.R"
  )

  expect_equal(filter_test_scripts(files, filter = "basic|Rtrick|rtest"), files)
  expect_equal(filter_test_scripts(files, filter = "Rtrick|rtest"), files[2:3])
  expect_equal(
    filter_test_scripts(files, filter = "Rtrick|rtest", invert = TRUE),
    files[1]
  )
})


# errors ------------------------------------------------------------------

test_that("can control if failures generate errors", {
  test_error <- function(...) {
    test_dir(test_path("test-error"), reporter = "silent", ...)
  }

  expect_error(test_error(stop_on_failure = TRUE), "Test failures")
  expect_error(test_error(stop_on_failure = FALSE), NA)
})


test_that("can control if warnings errors", {
  test_warning <- function(...) {
    test_dir(test_path("test-warning"), reporter = "silent", ...)
  }

  expect_error(test_warning(stop_on_warning = TRUE), "Tests generated warnings")
  expect_error(test_warning(stop_on_warning = FALSE), NA)
})
