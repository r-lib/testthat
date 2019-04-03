expect_report_unchanged <- function(name, reporter = find_reporter(name)) {
  path <- test_path("reporters", paste0(name, ".txt"))
  withr::local_options(c(cli.unicode = TRUE))

  expect_known_output(
    test_file(test_path("reporters/tests.R"), reporter, wrap = FALSE),
    path
  )
}

test_that("reporters produce consistent output", {
  with_mock(
    show_menu = function(choices, title = NULL) {
      cat(paste0(format(seq_along(choices)), ": ", choices, sep = "\n"), "\n", sep = "")
      0L
    },
    sink_number = function() 0L,
    expect_report_unchanged("debug")
  )

  expect_report_unchanged("check", CheckReporter$new())
  expect_report_unchanged("progress", ProgressReporter$new(show_praise = FALSE, min_time = Inf, update_interval = 0))
  expect_report_unchanged("summary", SummaryReporter$new(show_praise = FALSE, omit_dots = FALSE))
  expect_report_unchanged("summary-2", SummaryReporter$new(show_praise = FALSE, max_reports = 2))
  expect_report_unchanged("summary-no-dots", SummaryReporter$new(show_praise = FALSE, omit_dots = TRUE))
  expect_report_unchanged("location")
  expect_report_unchanged("minimal")
  expect_report_unchanged("tap")
  expect_report_unchanged("teamcity")
  expect_report_unchanged("silent")
  expect_report_unchanged("rstudio")
  expect_report_unchanged("junit", reporter = createJunitReporterMock())

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

expect_report_to_file <- function(reporter, ...) {
  path <- tempfile()
  on.exit(unlink(path))
  reporter <- reporter$new(file = path, ...)

  test_file(test_path("reporters/tests.R"), reporter, wrap = FALSE)
  expect_true(file.exists(path))
}

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
  expect_report_to_file(SilentReporter)
})

test_that("reporters write to 'testthat.output_file', if specified", {
  path <- tempfile()
  withr::local_options(c(testthat.output_file = path))

  test_file(test_path("reporters/tests.R"), MinimalReporter$new(), wrap = FALSE)
  expect_true(file.exists(path))
})
