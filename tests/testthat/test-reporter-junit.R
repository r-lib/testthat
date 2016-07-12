context("JUnitReporter")

test_that("Junit reporter regression", {
  output.file        <- textConnection(NULL, "w")
  junit.reporter     <- JunitReporter$new(file = output.file)
  junit.reporter$out <- textConnection(NULL, "w")

  test_dir("test_dir", reporter = junit.reporter)
  junit.report <- textConnectionValue(junit.reporter$out)

  # standard output
  expect_identical(junit.report[1], "Bare : ")
  expect_identical(junit.report[2], "Basic : .......")
  expect_identical(junit.report[3], "empty : E")
  expect_identical(junit.report[4], "error : E.EFEE.")
  expect_identical(junit.report[5], "failures : F.F..")
  expect_identical(junit.report[6], "helper : .")
  expect_identical(junit.report[7], "skip : .")

  # XML file output
  testsuite <- function(tests, failures, errors, name) {
    paste0('<testsuite tests="', tests, '" failures="', failures,
           '" errors="', errors, '" name="', name, '"')
  }

  xml.report <- textConnectionValue(output.file)
  expect_true(testsuite(7, 0, 0, "Basic") %in% xml.report)
  expect_true(testsuite(1, 0, 1, "empty") %in% xml.report)
  expect_true(testsuite(7, 1, 4, "error") %in% xml.report)
  expect_true(testsuite(5, 2, 0, "failures") %in% xml.report)
  expect_true(testsuite(1, 0, 0, "helper") %in% xml.report)
  expect_true(testsuite(1, 1, 0, "skip") %in% xml.report)
})

