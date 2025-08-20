test_that("error outside of test_that()", {
  local_parallel_test_config()

  err <- capture_parallel_error(test_path("test-parallel", "outside"))
  expect_match(err$message, "Test failures")
})
