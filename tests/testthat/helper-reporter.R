expect_report_unchanged <- function(name, reporter = find_reporter(name), file = "reporters/tests.R") {
  path <- test_path("reporters", paste0(name, ".txt"))

  local_reproducible_output(unicode = TRUE)

  expect_known_output(
    with_reporter(reporter, test_one_file(test_path(file))),
    path
  )
}

expect_report_to_file <- function(reporter, ...) {
  path <- tempfile()
  on.exit(unlink(path))
  reporter <- reporter$new(file = path, ...)

  with_reporter(reporter, test_one_file(test_path("reporters/tests.R")))
  expect_true(file.exists(path))
}
