test_that("can control output with file arg/option", {
  # powered through Reporter base class so we only test one reporter
  path <- tempfile()
  withr::defer(unlink(path))

  with_reporter(
    MinimalReporter$new(file = path),
    test_one_file(test_path("reporters/tests.R"))
  )
  expect_snapshot_output(read_lines(path))

  withr::local_options(list(testthat.output_file = path))
  with_reporter(
    MinimalReporter$new(),
    test_one_file(test_path("reporters/tests.R"))
  )
  expect_snapshot_output(read_lines(path))
})
