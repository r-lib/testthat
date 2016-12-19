context("JUnitReporter")


test_that("Junit reporter regression", {
  junit.reporter     <- createJunitReporterMock()
  junit.reporter$out <- textConnection(NULL, "w")
  test_dir("test_dir", reporter = junit.reporter)

  # junit.reporter     <- JunitReporterMock$new()
  # test_dir("tests/testthat/test_dir", reporter = junit.reporter)

  # XML file output
  testsuite_in_report <- function(tests, skipped, failures, errors, name) {
    line <- paste0('<testsuite name="', name, '" timestamp="[^"]*" hostname="[^"]*" ',
                   'tests="', tests, '" skipped="', skipped,
                   '" failures="', failures, '" errors="', errors, '"')
    length(grep(line, xml.report)) > 0
  }

  xml.report <- textConnectionValue(junit.reporter$out)
  expect_true(testsuite_in_report(8, 1, 0, 0, "Basic"))
  expect_true(testsuite_in_report(2, 1, 0, 1, "empty"))
  expect_true(testsuite_in_report(7, 0, 1, 4, "error"))
  expect_true(testsuite_in_report(5, 0, 2, 0, "failures"))
  expect_true(testsuite_in_report(1, 0, 0, 0, "helper"))
  expect_true(testsuite_in_report(1, 1, 0, 0, "skip"))
})
