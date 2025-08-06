test_that("stdout/stderr in parallel code", {
  skip_on_covr()
  withr::local_envvar(TESTTHAT_PARALLEL = "TRUE")
  out <- capture.output(suppressMessages(testthat::test_local(
    test_path("test-parallel", "stdout"),
    reporter = "summary"
  )))
  expect_true("> test-stdout-2.R: This is a message!" %in% out)
  expect_true(any(grepl("test-stdout-3.R:  [1]  1  2  3", out, fixed = TRUE)))

  out2 <- capture.output(suppressMessages(testthat::test_local(
    test_path("test-parallel", "stdout"),
    reporter = "progress"
  )))
  expect_true("> test-stdout-2.R: This is a message!" %in% out2)
  expect_true(any(grepl("test-stdout-3.R:  [1]  1  2  3", out2, fixed = TRUE)))
})
