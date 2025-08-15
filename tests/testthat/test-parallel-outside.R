test_that("error outside of test_that()", {
  skip_on_covr()
  withr::local_envvar(c(
    TESTTHAT_PARALLEL = "TRUE",
    TESTTHAT_GHA_SUMMARY = "FALSE"
  ))
  err <- tryCatch(
    capture.output(suppressMessages(testthat::test_local(
      test_path("test-parallel", "outside"),
      reporter = "summary"
    ))),
    error = function(e) e
  )

  expect_match(err$message, "Test failures")
})
