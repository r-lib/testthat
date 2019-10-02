context("test-reporter-junit")

test_that("permit Java-style class names", {
  class <- "package_name_or_domain.ClassName"
  expect_equal(classnameOK(class), class)
})
