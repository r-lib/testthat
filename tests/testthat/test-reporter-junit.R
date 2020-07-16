test_that("reporter doesn't change without warning", {
  expect_snapshot_reporter(JunitReporterMock$new())
})

test_that("permit Java-style class names", {
  class <- "package_name_or_domain.ClassName"
  expect_equal(classnameOK(class), class)
})
