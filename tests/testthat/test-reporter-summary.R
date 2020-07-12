test_that("multiplication works", {
  withr::local_options(list(rlang_trace_format_srcrefs = FALSE))

  expect_report_unchanged("summary",
    SummaryReporter$new(show_praise = FALSE, omit_dots = FALSE)
  )
  expect_report_unchanged("summary-2",
    SummaryReporter$new(show_praise = FALSE, max_reports = 2)
  )
  expect_report_unchanged("summary-no-dots",
    SummaryReporter$new(show_praise = FALSE, omit_dots = TRUE)
  )

  expect_report_to_file(SummaryReporter, show_praise = FALSE, omit_dots = FALSE)
})
