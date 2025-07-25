test_that("teardown error", {
  skip("teardown errors are ignored")
  withr::local_envvar(TESTTHAT_PARALLEL = "TRUE")
  err <- tryCatch(
    capture.output(suppressMessages(testthat::test_local(
      test_path("test-parallel", "teardown"),
      reporter = "summary"
    ))),
    error = function(e) e
  )
  expect_s3_class(err, "testthat_process_error")
  expect_match(err$message, "Error in teardown", fixed = TRUE)
})
