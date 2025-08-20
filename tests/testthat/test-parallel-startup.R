test_that("startup error", {
  local_parallel_test_config()

  err <- capture_parallel_error(test_path("test-parallel", "startup"))
  expect_s3_class(err, "testthat_process_error")
  expect_match(conditionMessage(err), "This will fail", fixed = TRUE)
})
