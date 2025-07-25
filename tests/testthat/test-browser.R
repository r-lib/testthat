test_that("browser() usages are errors in tests", {
  skip_if(getRversion() < "4.3.0")
  if (!interactive()) {
    expect_error(browser())
  }
})
