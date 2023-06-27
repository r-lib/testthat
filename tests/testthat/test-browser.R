
test_that("browser() usages are errors in tests", {
  if (!interactive())
    expect_error(browser())
})
