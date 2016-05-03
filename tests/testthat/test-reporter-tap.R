context("TAP reporter")

tap.report <- capture.output(test_dir("test_dir", reporter = "tap"))

test_that("TAP reporter handles context and pass/fail/skip", {
  expect_identical(tap.report[1], "1..22")
  expect_identical(tap.report[2], "# Context Basic")
  expect_true("ok 6 equality holds" %in% tap.report)
  expect_true("not ok 8 empty test with error" %in% tap.report)
  expect_true("ok 22 # SKIP Skipping to avoid certain failure" %in% tap.report)
})
