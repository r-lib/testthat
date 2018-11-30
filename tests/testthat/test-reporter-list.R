context("ListReporter")

# regression test: test_file() used to crash with a NULL reporter
test_that("ListReporter with test_file and NULL reporter", {
  test_file_path <- 'test-list-reporter/test-exercise-list-reporter.R'
  expect_error(test_file(test_path(test_file_path), reporter = NULL), NA)
})

test_that("ListReporter with test_file", {
  ### regression: exception between 2 tests
  test_file_path <- 'test-list-reporter/test-exception-outside-tests.R'

  res <- test_file(test_path(test_file_path), reporter = NULL)

  expect_true(is.list(res))
  expect_length(res, 2) # first test + exception

  df <- as.data.frame(res)

  # test1
  expect_identical(df$test[1], 'before')
  expect_false(df$error[1])

  # exception
  expect_true(is.na(df$test[2]))
  expect_true(df$error[2])

  ### standard tests
  test_file_path <- 'test-list-reporter/test-exercise-list-reporter.R'

  res <- test_file(test_path(test_file_path), reporter = NULL)

  expect_is(res, "testthat_results")
  expect_length(res, 5)

  # Check context and file are set
  contexts <- sapply(res, "[[", "context")
  expect_identical(unique(contexts), c("First context.", "Second context."))

  files <- sapply(res, "[[", "file")
  expect_equal(files, rep(c(basename(test_file_path)), 5))

  # test 4 should fail
  fail_test <- res[[4]]
  expect_identical(fail_test$test, "A failing test")

  expect_is(fail_test$results, "list")
  expect_length(fail_test$results, 1)

  expect_identical(expectation_type(fail_test$results[[1]]), "failure")

  # test 5 should crash
  crash_test <- res[[5]]
  expect_identical(crash_test$test, "A crashing test")

  expect_is(crash_test$results, "list")
  expect_length(crash_test$results, 1)

  expect_identical(expectation_type(crash_test$results[[1]]), "error")
})

