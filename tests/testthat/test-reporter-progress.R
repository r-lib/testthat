test_that("captures error before first test", {
  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    test_file(
      test_path("reporters/error-setup.R"),
      ProgressReporter$new(show_praise = FALSE)
    ),
    test_path("reporters/progress-error-setup.txt")
  )
})
