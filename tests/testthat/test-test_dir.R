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
