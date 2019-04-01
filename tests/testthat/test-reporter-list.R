test_that("ListReporter with test_file", {
  report <- ListReporter$new()
  report$start_file("context.R")

  test_file(test_path("context.R"), report)

  res <- report$results$as_list()
  expect_is(res, "list")
  expect_equal(length(res), 4)

  # Check context and file are set
  contexts <- sapply(res, "[[", "context")
  expect_equal(contexts, rep(c("First context.", "Second context."), each = 2))

  files <- sapply(res, "[[", "file")
  expect_equal(files, rep(c("context.R"), 4))

  # Check results are as expected
  last_results <- res[[4]]$results
  expect_is(last_results, "list")
  expect_equal(length(last_results), 1)

  fl <- last_results[[1]]
  expect_equal(expectation_type(fl), "failure")
})
