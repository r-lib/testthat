test_that("this crashes", {
  expect_true(TRUE)
  expect_true(FALSE)
  asNamespace("callr")$crash()
})
