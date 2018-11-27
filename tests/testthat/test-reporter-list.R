context("ListReporter")

test_that("ListReporter with test_file", {

  path <- 'test-list-reporter/test-exercise-list-reporter.R'

  report <- ListReporter$new()
  report$start_file(path)

  test_file(test_path(path), report)

  res <- report$results$as_list()
  expect_is(res, "list")
  expect_equal(length(res), 4)

  # Check context and file are set
  contexts <- sapply(res, "[[", "context")
  expect_equal(contexts, rep(c("First context.", "Second context."), each = 2))

  files <- sapply(res, "[[", "file")
  expect_equal(files, rep(c(basename(path)), 4))

  # Check results are as expected
  last_results <- res[[4]]$results
  expect_is(last_results, "list")
  expect_equal(length(last_results), 1)

  fl <- last_results[[1]]
  expect_equal(expectation_type(fl), "failure")
})
