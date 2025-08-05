test_that("error in parallel setup code", {
  skip_on_covr()
  withr::local_envvar(TESTTHAT_PARALLEL = "TRUE")
  err <- tryCatch(
    capture.output(suppressMessages(testthat::test_local(
      test_path("test-parallel", "syntax-error"),
      reporter = "summary"
    ))),
    error = function(e) e
  )
  expect_s3_class(err, "testthat_process_error")
  # contains test file's name
  expect_match(conditionMessage(err), "test-error-1.R")
  # contains original error message
  expect_match(conditionMessage(err), "unexpected symbol")
  # contains the text of the syntax error
  expect_match(conditionMessage(err), "but this")
})
