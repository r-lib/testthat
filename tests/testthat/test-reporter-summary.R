test_that("can control appearance of dots", {
  expect_snapshot_reporter(SummaryReporter$new(show_praise = FALSE, omit_dots = FALSE))
  expect_snapshot_reporter(SummaryReporter$new(show_praise = FALSE, omit_dots = TRUE))
})

test_that("can control maximum reports", {
  expect_snapshot_reporter(SummaryReporter$new(show_praise = FALSE, max_reports = 2))
})
