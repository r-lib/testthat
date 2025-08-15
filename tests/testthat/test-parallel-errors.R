test_that("error in parallel setup code", {
  local_parallel_test_config()

  err <- capture_parallel_error(test_path("test-parallel", "syntax-error"))
  expect_s3_class(err, "testthat_process_error")
  # contains test file's name
  expect_match(conditionMessage(err), "test-error-1.R")
  # contains original error message
  expect_match(conditionMessage(err), "unexpected symbol")
  # contains the text of the syntax error
  expect_match(conditionMessage(err), "but this")
})
