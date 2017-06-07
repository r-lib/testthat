context("test_dir")

test_that('test_dir()', {
  res <- test_dir(test_path('test_dir'), reporter = 'silent')

  df <- as.data.frame(res)
  df$user <- df$system  <- df$real <- NULL

  expect_equal_to_reference(df, "test_dir.rds")
})

test_that('test_dir() filter', {
  res <- test_dir('test_dir', reporter = 'silent', filter = 'basic|empty')
  df <- as.data.frame(res)
  expect_identical(unique(df$context),  c("Basic", "empty"))
})

test_that('test_dir() helpers', {
  res <- test_dir('test_dir', reporter = 'silent', filter = 'helper')
  df <- as.data.frame(res)
  expect_true(all(!df$error & df$failed == 0))
})

test_that('filter_test_scripts() with tricky names', {
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

test_that("test_dir and `wrap`", {
  ## forced to test screen output because tests outside of `testthat` blocks are
  ## not recorded in return value, even when `wrap=TRUE` (see #596")

  w.wrap <- capture.output(
    test_dir("test_dir", filter = "bare-expectations", wrap = TRUE)
  )
  wo.wrap <- capture.output(
    test_dir("test_dir", filter = "bare-expectations", wrap = FALSE)
  )
  # With wrap should display two dots to screen

  expect_true(sum(grepl("^Bare: \\.\\.", crayon::strip_style(w.wrap))) == 1L)

  ## Without wrap should not display any dots; however, it is not possible to
  ## test this because this test itself is in a `test_that` block, and further
  ## since the whole test suite is effectively run with `wrap=TRUE` it is not
  ## possible to test this at all.  I ran this outside of the `test_that` call
  ## and it worked as expected.

  skip("untestable within test suite")
  expect_true(sum(grepl("^Bare:\\s+$", crayon::strip_style(wo.wrap))) == 1L)
})
