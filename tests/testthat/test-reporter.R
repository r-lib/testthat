context("Reporter")

test_that("can locate reporter from name", {
  expect_that(find_reporter("minimal"), equals(MinimalReporter$new()))
  expect_that(find_reporter("summary"), equals(SummaryReporter$new()))
  expect_that(find_reporter("tap"),     equals(TapReporter$new()))
  expect_that(find_reporter("list"),    equals(ListReporter$new()))
  expect_that(find_reporter("multi"),   equals(MultiReporter$new()))
  expect_that(find_reporter("junit"),   equals(JunitReporter$new()))
  expect_that(find_reporter(""),        equals(Reporter$new()))
})

test_that("useful error message if can't find reporter", {
  expect_error(
    find_reporter(c("summary", "blah")),
    "Can not find test reporter blah"
  )
})

test_that("character vector yields multi reporter", {
  expect_equal(
    find_reporter(c("summary", "stop")),
    MultiReporter$new(
      reporters = list(
        SummaryReporter$new(),
        StopReporter$new()
      )
    )
  )
  expect_equal(
    find_reporter(c("teamcity", "summary", "list")),
    MultiReporter$new(
      reporters = list(
        TeamcityReporter$new(),
        SummaryReporter$new(),
        ListReporter$new()
      )
    )
  )
})

test_reporter <- function(reporter) {
  withr::local_options(list(width = 80, crayon.enabled = FALSE))
  withr::local_envvar(list(RSTUDIO_CONSOLE_WIDTH = 80))

  test_file(test_path("reporters/tests.R"), reporter, wrap = FALSE)
}

test_that("reporters produce consistent output", {
  save_report <- function(name, reporter = find_reporter(name)) {
    path <- test_path("reporters", paste0(name, ".txt"))
    expect_known_output(test_reporter(reporter), path)
  }

  with_mock(
    show_menu = function(choices, title = NULL) {
      cat(
        paste0(format(seq_along(choices)), ": ", choices, sep = "\n"), "\n",
        sep = ""
      )
      0L
    },
    sink_number = function() 0L,
    save_report("debug")
  )
  save_report("check", CheckReporter$new(stop_on_failure = FALSE))
  save_report("progress", ProgressReporter$new(show_praise = FALSE, min_time = Inf))
  save_report("summary", SummaryReporter$new(show_praise = FALSE, omit_dots = FALSE))
  save_report("summary-2", SummaryReporter$new(show_praise = FALSE, max_reports = 2))
  save_report("summary-no-dots", SummaryReporter$new(show_praise = FALSE, omit_dots = TRUE))
  save_report("location")
  save_report("minimal")
  save_report("tap")
  save_report("teamcity")
  save_report("silent")
  save_report("rstudio")
  save_report("junit", reporter = createJunitReporterMock())

  # Test that MultiReporter can write to two different places
  tap_file <- tempfile()
  save_report("summary", reporter = MultiReporter$new(list(
    SummaryReporter$new(show_praise = FALSE, omit_dots = FALSE),
    TapReporter$new(file = tap_file)
  )))
  expect_identical(
    read_lines(tap_file),
    read_lines(test_path("reporters", "tap.txt"))
  )
})


expect_report_to_file <- function(name,
                                  reporter = find_reporter_one(name, ...),
                                  output_file,
                                  ...) {
  # output_file is where we expect output to be written to, whether we pass it
  # as an argument to Reporter$new() (here, via the ...), or whether it is set
  # in an option.
  path <- test_path("reporters", paste0(name, ".txt"))
  expect_silent(test_reporter(reporter))
  expect_equal(read_lines(output_file), read_lines(path))
}

test_that("reporters accept a 'file' arugment and write to that location", {
  output <- tempfile()
  expect_report_to_file(
    "check",
    CheckReporter$new(stop_on_failure = FALSE, file = output),
    output_file = output
  )
  expect_report_to_file(
    "progress",
    ProgressReporter$new(show_praise = FALSE, min_time = Inf, file = output),
    output_file = output
  )
  expect_report_to_file(
    "summary",
    SummaryReporter$new(show_praise = FALSE, omit_dots = FALSE, file = output),
    output_file = output
  )
  expect_report_to_file("location", file = output, output_file = output)
  expect_report_to_file("minimal", file = output, output_file = output)
  expect_report_to_file("tap", file = output, output_file = output)
  expect_report_to_file("teamcity", file = output, output_file = output)
  expect_report_to_file("rstudio", file = output, output_file = output)
  expect_report_to_file(
    "junit",
    reporter = createJunitReporterMock(file = output),
    output_file = output
  )
})

test_that("reporters write to 'testthat.output_file', if specified", {
  output_option <- tempfile()
  withr::with_options(list(testthat.output_file = output_option), {
    expect_report_to_file(
      "summary",
      SummaryReporter$new(show_praise = FALSE, omit_dots = FALSE),
      output_file = output_option
    )
  })
})

test_that("silent reporter accepts the 'file' argument but doesn't write anything", {
  output <- tempfile()
  expect_silent(test_reporter(SilentReporter$new(file = output)))
  expect_false(file.exists(output))
})
