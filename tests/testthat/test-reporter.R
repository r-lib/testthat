test_that("can control output with file arg/option", {
  # powered through Reporter base class so we only test one reporter
  path <- withr::local_tempfile()

  with_reporter(
    MinimalReporter$new(file = path),
    test_one_file(test_path("reporters/tests.R"))
  )
  expect_snapshot_output(readLines(path))

  withr::local_options(testthat.output_file = path)
  with_reporter(
    MinimalReporter$new(),
    test_one_file(test_path("reporters/tests.R"))
  )
  expect_snapshot_output(readLines(path))
})

test_that("should not automatically skip in non-utf-8 locales", {
  withr::local_locale(LC_CTYPE = "C")
  expect_true(TRUE)
})
