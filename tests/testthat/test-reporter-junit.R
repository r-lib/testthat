context("JUnitReporter")


test_that("XML new node", {
  node <- xml_new_node("name", c(a=1, b=2), NULL)
  expect_equal(grep('<name a="1" b="2"/>', toString(node)), 1)
})


test_that("XML new node with children", {
  child  <- xml_new_node("child", c(a=1), NULL)
  parent <- xml_new_node("parent", c(b=2), child)

  expect_equal(grep('<parent b="2"><child a="1"/></parent>',
                    toString(parent)), 1)
})


test_that("Junit reporter regression", {
  output.file        <- textConnection(NULL, "w")
  junit.reporter     <- JunitReporter$new(file = output.file)
  junit.reporter$out <- textConnection(NULL, "w")

  # test_dir("tests/testthat/test_dir", reporter = junit.reporter)
  test_dir("test_dir", reporter = junit.reporter)
  junit.report <- textConnectionValue(junit.reporter$out)

  # standard output
  expect_identical(junit.report[1], "Bare : ..")
  expect_identical(junit.report[2], "Basic : .......")
  expect_identical(junit.report[3], "empty : E")
  expect_identical(junit.report[4], "error : E.EFEE.")
  expect_identical(junit.report[5], "failures : F.F..")
  expect_identical(junit.report[6], "helper : .")
  expect_identical(junit.report[7], "skip : .")

  # XML file output
  testsuite_in_report <- function(tests, failures, errors, name) {
    line <- paste0('<testsuite tests="', tests,
                   '" failures="', failures,
                   '" errors="', errors,
                   '" name="', name, '"')
    length(grep(line, xml.report)) > 0
  }

  xml.report <- textConnectionValue(output.file)
  expect_true(testsuite_in_report(7, 0, 0, "Basic"))
  expect_true(testsuite_in_report(1, 0, 1, "empty"))
  expect_true(testsuite_in_report(7, 1, 4, "error"))
  expect_true(testsuite_in_report(5, 2, 0, "failures"))
  expect_true(testsuite_in_report(1, 0, 0, "helper"))
  expect_true(testsuite_in_report(1, 1, 0, "skip"))
})

