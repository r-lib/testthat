context("TAP reporter")

tap.report <- capture.output(test_dir("test_dir", reporter = "tap"))

test_that("TAP reporter handles context and pass/fail/skip", {
  expect_identical(tap.report[1], "1..24")
  expect_identical(tap.report[2], "# Context Bare ")
  expect_true("ok 7 equality holds " %in% tap.report)
  expect_true("not ok 10 empty test with error " %in% tap.report)
  expect_true("ok 24 # SKIP Skipping to avoid certain failure " %in% tap.report)
})

test_that("TAP reporter can write to file", {
  tapfile <- tempfile()
  test_dir("test_dir", reporter = TapReporter$new(file=tapfile))
  expect_identical(readLines(tapfile), tap.report)
})
