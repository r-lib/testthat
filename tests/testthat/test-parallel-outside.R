
test_that("error outside of test_that()", {
  err <- tryCatch(
    suppressMessages(testthat::test_local(
      test_path("test-parallel", "outside"),
      reporter = "silent"
    )),
    error = function(e) e
  )

  expect_match(err$message, "Test failures")
})
