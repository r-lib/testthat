test_that("reporter doesn't change without warning", {
  skip_if_not_installed("xml2")
  expect_snapshot_reporter(JunitReporterMock$new())
})

test_that("permit Java-style class names", {
  class <- "package_name_or_domain.ClassName"
  expect_equal(classnameOK(class), class)
})

test_that("ANSI escapes are stripped from all user text in XML", {
  skip_if_not_installed("xml2")

  tmp <- withr::local_tempfile(fileext = ".xml")
  reporter <- JunitReporterMock$new(file = tmp)
  reporter$start_reporter()

  text_with_ansi <- "\033[33mFirst line\033[0m\nSecond line"
  reporter$start_context("c")
  reporter$start_test("c", "t")
  reporter$add_result("c", "t", new_expectation("error", text_with_ansi))
  reporter$add_result("c", "t", new_expectation("failure", text_with_ansi))
  reporter$add_result("c", "t", new_expectation("skip", text_with_ansi))
  reporter$end_test()
  reporter$end_context()
  reporter$end_reporter()

  expect_no_error(xml2::read_xml(tmp))
})
