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
        StopReporter$new())
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
  # Function to run the reporter "test suite" with a given reporter
  withr::with_options(
    list(expressions = Cstack_info()[["eval_depth"]] + 200),
    test_file(test_path("reporters/tests.R"), reporter, wrap = FALSE)
  )
}

test_that("reporters produce consistent output", {
  old <- options(width = 80)
  on.exit(options(old), add = TRUE)

  save_report <- function(name, reporter = find_reporter(name), error_regexp = NA) {
    path <- test_path("reporters", paste0(name, ".txt"))

    expect_output_file(
      expect_error(
        test_reporter(reporter),
        error_regexp
      ),
      path, update = TRUE)
  }

  with_mock(
    show_menu = function(choices, title = NULL) {
      cat(paste0(format(seq_along(choices)), ": ", choices, sep = "\n"), "\n",
          sep = "")
      0L
    },
    sink_number = function() 0L,
    save_report("debug")
  )
  save_report("check", error_regexp = NULL)
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
    TapReporter$new(file=tap_file))
  ))
  expect_identical(read_lines(tap_file),
    read_lines(test_path("reporters", "tap.txt")))
})


test_report_to_file <- function(name, reporter = find_reporter_one(name, ...),
                                output_file, ...) {
  # output_file is where we expect output to be written to, whether we pass it
  # as an argument to Reporter$new() (here, via the ...), or whether it is set
  # in an option.
  path <- test_path("reporters", paste0(name, ".txt"))
  expect_silent(test_reporter(reporter))
  expect_identical(read_lines(output_file), read_lines(path))
}

output <- tempfile()
output_option <- tempfile()
for (r in c("location", "minimal", "tap", "teamcity", "rstudio")) {
  test_that(paste(r, "reporter accepts a 'file' on initialization"), {
    test_report_to_file(r, output_file = output, file = output)
  })
  withr::with_options(list(testthat.output_file = output_option), {
    test_that(paste(r, "reporter uses testthat.output_file, if specified"), {
      test_report_to_file(r, output_file = output_option)
    })
  })
}

withr::with_options(list(testthat.summary.omit_dots = FALSE), {
  for (r in c("summary", "progress")) {
    # Do these separately to force show_praise = FALSE
    test_that(paste(r, "reporter accepts a 'file' on initialization"), {
      test_report_to_file(r, output_file = output, file = output,
        show_praise = FALSE)
    })
    withr::with_options(list(testthat.output_file = output_option), {
      test_that(paste(r, "reporter uses testthat.output_file, if specified"), {
        test_report_to_file(r, output_file = output_option,
          show_praise = FALSE)
      })
    })
  }
})

junit_output_option <- tempfile()
test_that(paste("junit reporter accepts a 'file' on initialization"), {
  test_report_to_file("junit", createJunitReporterMock(file = output),
    output_file = output)
})
withr::with_options(list(testthat.output_file = output_option), {
  test_that("junit uses testthat.output_file", {
    test_report_to_file("junit", createJunitReporterMock(),
      output_file = output_option)
  })
  withr::with_options(list(testthat.junit.output_file = junit_output_option), {
    test_that("testthat.junit.output_file overrides", {
      test_report_to_file("junit", createJunitReporterMock(),
        output_file = junit_output_option)
    })
  })
})
