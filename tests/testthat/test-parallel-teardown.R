test_that("teardown error", {
  skip_on_covr()
  withr::local_envvar(TESTTHAT_PARALLEL = "TRUE")
  err <- tryCatch(
    capture.output(suppressMessages(testthat::test_local(
      test_path("test-parallel", "teardown"),
      reporter = "summary"
    ))),
    error = function(e) e
  )
  expect_s3_class(err$parent, "callr_error")
  expect_match(
    err$message,
    "At least one parallel worker failed to run teardown"
  )
  expect_match(
    err$parent$parent$parent$message,
    "Error in teardown",
    fixed = TRUE
  )
})
