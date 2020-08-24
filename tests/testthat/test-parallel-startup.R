
test_that("startup error", {
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
