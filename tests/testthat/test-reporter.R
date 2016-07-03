context("Reporter")

test_that("can locate reporter from name", {
  expect_that(find_reporter("minimal"), equals(MinimalReporter$new()))
  expect_that(find_reporter("summary"), equals(SummaryReporter$new()))
  expect_that(find_reporter("tap"),     equals(TapReporter$new()))
  expect_that(find_reporter("list"),    equals(ListReporter$new()))
  expect_that(find_reporter("multi"),   equals(MultiReporter$new()))
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

test_that("reporters produce consistent output", {
  old <- options(width = 80)
  on.exit(options(old), add = TRUE)

  save_report <- function(name, reporter = find_reporter(name), error_regexp = NA) {
    path <- test_path("reporters", paste0(name, ".txt"))

    expect_output_file(
      expect_error(
        test_file(test_path("reporters/tests.R"), reporter),
        error_regexp
      ),
      path, update = TRUE)
  }

  save_report("check", error_regexp = NULL)
  save_report("summary", SummaryReporter$new(show_praise = FALSE))
  save_report("minimal")
  save_report("tap")
  save_report("teamcity")
  save_report("silent")
  save_report("rstudio")
})
