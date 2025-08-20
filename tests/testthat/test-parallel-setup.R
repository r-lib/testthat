test_that("error in parallel setup code", {
  local_parallel_test_config()

  err <- capture_parallel_error(test_path("test-parallel", "setup"))
  expect_s3_class(err, "testthat_process_error")
  expect_match(conditionMessage(err), "Error in setup", fixed = TRUE)
})
