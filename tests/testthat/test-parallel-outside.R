
test_that("error outside of test_that()", {
  withr::local_envvar(c(TESTTHAT_PARALLEL = "TRUE"))
  err <- tryCatch(
    suppressMessages(testthat::test_local(
      test_path("test-parallel", "outside"),
      reporter = "silent"
    )),
    error = function(e) e
  )

  expect_match(err$message, "Test failures")
})
