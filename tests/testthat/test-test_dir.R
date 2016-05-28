context("test_dir")

test_that('test_dir()', {
  res <- test_dir(test_path('test_dir'), reporter = 'silent')
  df <- as.data.frame(res)

  expected <-
    data.frame(file = c("test-basic.R", "test-basic.R", "test-basic.R",
        "test-basic.R", "test-basic.R", "test-empty.R", "test-empty.R",
        "test-errors.R", "test-errors.R", "test-errors.R", "test-errors.R",
        "test-errors.R", "test-failures.R", "test-failures.R", "test-failures.R",
        "test-helper.R", "test-skip.R"),
      context = c("Basic", "Basic", "Basic", "Basic",
        "Basic", "empty", "empty", "error", "error", "error", "error",
        "error", "failures", "failures", "failures", "helper", "skip"),
      test = c("logical tests act as expected",
        "logical tests ignore attributes", "equality holds",
        "can't access variables from other tests 2",
        "can't access variables from other tests 1", "empty test",
        "empty test with error",
        "simple", "after one success", "after one failure", "in the test",
        "in expect_error", "just one failure", "one failure on two",
        "no failure", "helper test",
        "Skips skip"),
      nb = c(2L, 2L, 2L, 0L, 1L, 0L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 2L, 2L, 1L, 1L),
      failed = c(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 0L, 0L),
      skipped = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
        FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE),
      error = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE,
        TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE),
      stringsAsFactors = FALSE)

  df$user <- df$system  <- df$real <- NULL
  expect_identical(df, expected)
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
