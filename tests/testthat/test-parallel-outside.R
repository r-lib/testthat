test_that("error outside of test_that()", {
  skip_on_covr()
  withr::local_envvar(TESTTHAT_PARALLEL = "TRUE")
  err <- tryCatch(
    capture.output(suppressMessages(testthat::test_local(
      test_path("test-parallel", "outside"),
      reporter = "summary"
    ))),
    error = function(e) e
  )

  expect_match(err$message, "Test failures")
})
