test_that("teardown error", {
  skip("teardown errors are ignored")
  skip_on_covr()
  withr::local_envvar(c(
    TESTTHAT_PARALLEL = "TRUE",
    TESTTHAT_GHA_SUMMARY = "FALSE"
  ))
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
