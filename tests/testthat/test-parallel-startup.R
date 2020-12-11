
test_that("startup error", {
  skip_on_covr()
  withr::local_envvar(TESTTHAT_PARALLEL = "TRUE")
  err <- tryCatch(
    suppressMessages(testthat::test_local(
      test_path("test-parallel", "startup"),
      reporter = "silent"
    )),
    error = function(e) e
  )
  expect_s3_class(err, "testthat_process_error")
  expect_match(err$message, "This will fail", fixed = TRUE)
})
