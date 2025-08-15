test_that("teardown error", {
  skip("teardown errors are ignored")
  local_parallel_test_config()

  err <- capture_parallel_error(test_path("test-parallel", "teardown"))
  expect_s3_class(err, "testthat_process_error")
  expect_match(err$message, "Error in teardown", fixed = TRUE)
})
