
test_that("teardown error", {
  err <- tryCatch(
    suppressMessages(testthat::test_local(
      test_path("test-parallel", "teardown"),
      reporter = "silent"
    )),
    error = function(e) e
  )
  expect_s3_class(err, "testthat_process_error")
  expect_match(err$message, "Error in teardown", fixed = TRUE)
})
