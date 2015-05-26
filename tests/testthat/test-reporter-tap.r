context("TAP reporter")

test_that("TAP reporter handles context and pass/fail/skip", {
  filename <- tempfile(fileext="tap")
  sink(filename)
    test_dir("test_dir", reporter = "tap")
  sink()
  tap.report <- readLines(filename)
  expect_identical(tap.report[1], "1..24")
  expect_identical(tap.report[2], "# Context Bare ")
  expect_true("ok 7 equality holds " %in% tap.report)
  expect_true("not ok 10 empty test with error " %in% tap.report)
  expect_true("ok 24 # skip Skipping to avoid certain failure " %in% tap.report)
})