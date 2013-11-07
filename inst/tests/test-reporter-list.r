context("ListReporter")

test_that("ListReporter with test_file", {
  report <- ListReporter$new()
  report$start_file('context.r')
  
  test_file("context.r", report)

  res <- report$results
  expect_is(res, 'list')
  expect_equal(length(res), 4)
  contexts <- sapply(res, '[[', 'context')
  expect_equal(contexts, rep(c("First context.", "Second context."), each = 2))
  
  last_results <- tail(res, 1)[[1]]$results
  expect_is(last_results, 'list')
  expect_equal(length(last_results), 1)
  fl <- last_results[[1]]
  expect_true(!fl$passed && !fl$error && fl$success_msg == "TRUE equals FALSE")
  
  # test that file is set
  files <- sapply(res, '[[', 'file')
  expect_equal(files, rep(c("context.r"), 4))
})

