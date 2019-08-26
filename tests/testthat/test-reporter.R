
# Disable srcrefs because they differ across systems
withr::local_options(list(rlang_trace_format_srcrefs = FALSE))

skip_if(getRversion() < "3.4", "Fails because of new `eval()` call structure")

# rlang backtraces are sensitive to upstream changes
skip_on_cran()

test_that("reporters produce consistent output", {
  expect_report_unchanged("location")
  expect_report_unchanged("minimal")
  expect_report_unchanged("tap")
  expect_report_unchanged("teamcity")
  expect_report_unchanged("silent")
  expect_report_unchanged("rstudio")

  expect_report_unchanged("check", CheckReporter$new(stop_on_failure = FALSE))
  expect_report_unchanged("junit", reporter = JunitReporterMock)
  expect_report_unchanged("progress", ProgressReporter$new(show_praise = FALSE, min_time = Inf, update_interval = 0))
  expect_report_unchanged("summary", SummaryReporter$new(show_praise = FALSE, omit_dots = FALSE))
  expect_report_unchanged("summary-2", SummaryReporter$new(show_praise = FALSE, max_reports = 2))
  expect_report_unchanged("summary-no-dots", SummaryReporter$new(show_praise = FALSE, omit_dots = TRUE))

  # Test that MultiReporter can write to two different places
  tap_file <- tempfile()
  expect_report_unchanged("summary", reporter = MultiReporter$new(list(
    SummaryReporter$new(show_praise = FALSE, omit_dots = FALSE),
    TapReporter$new(file = tap_file)
  )))
  expect_identical(
    read_lines(tap_file),
    read_lines(test_path("reporters", "tap.txt"))
  )
})

test_that('debug reporter produces consistent output', {
  withr::local_options(c(testthat_format_srcrefs = FALSE))
  with_mock(
    show_menu = function(choices, title = NULL) {
      cat(paste0(format(seq_along(choices)), ": ", choices, sep = "\n"), "\n", sep = "")
      0L
    },
    sink_number = function() 0L,
    expect_report_unchanged("debug")
  )
})

test_that("reporters accept a 'file' argument and write to that location", {
  expect_report_to_file(CheckReporter, stop_on_failure = FALSE)
  expect_report_to_file(JunitReporterMock)
  expect_report_to_file(LocationReporter)
  expect_report_to_file(MinimalReporter)
  expect_report_to_file(ProgressReporter, show_praise = FALSE, min_time = Inf, update_interval = 0)
  expect_report_to_file(SummaryReporter, show_praise = FALSE, omit_dots = FALSE)
  expect_report_to_file(TapReporter)
  expect_report_to_file(TeamcityReporter)
  expect_report_to_file(RstudioReporter)
})

test_that("reporters write to 'testthat.output_file', if specified", {
  path <- tempfile()
  withr::local_options(c(testthat.output_file = path))

  test_file(test_path("reporters/tests.R"), MinimalReporter$new(), wrap = FALSE)
  expect_true(file.exists(path))
})

test_that("backtraces are reported", {
  expect_report_unchanged("progress-backtraces", file = "reporters/backtraces.R", ProgressReporter$new(show_praise = FALSE, min_time = Inf, update_interval = 0))
})

test_that("stop reporter stops at first failure", {
  expect_report_unchanged("stop", find_reporter("stop"), file = "reporters/fail.R")
})
