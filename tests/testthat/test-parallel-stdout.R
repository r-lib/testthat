test_that("stdout/stderr in parallel code", {
  skip_on_covr()
  withr::local_envvar(TESTTHAT_PARALLEL = "TRUE")
  out <- capture.output(suppressMessages(testthat::test_local(
    test_path("test-parallel", "stdout"),
    reporter = "summary"
  )))
  out <- paste(out, collapse = "\n")
  expect_match(out, "> test-stdout-2.R: This is a message!", fixed = TRUE)
  expect_match(out, "test-stdout-3.R:  [1]  1  2  3", fixed = TRUE)

  out2 <- capture.output(suppressMessages(testthat::test_local(
    test_path("test-parallel", "stdout"),
    reporter = "progress"
  )))
  out2 <- paste(out2, collapse = "\n")
  expect_match(out2, "> test-stdout-2.R: This is a message!", fixed = TRUE)
  expect_match(out2, "test-stdout-3.R:  [1]  1  2  3", fixed = TRUE)
})
