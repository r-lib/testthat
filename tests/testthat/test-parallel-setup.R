
test_that("error in parallel setup code", {
  err <- tryCatch(
    suppressMessages(testthat::test_local(
      test_path("test-parallel", "setup"),
      reporter = "silent"
    )),
    error = function(e) e
  )
  expect_s3_class(err, "testthat_process_error")
  expect_match(err$message, "Error in setup", fixed = TRUE)
})
