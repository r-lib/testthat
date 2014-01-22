context("expect_that")

test_that("expect_that with vector info stops", {
  expect_error(expect_true(FALSE, info = c('info1', 'info2')), 
      'length\\(info\\) <= 1')
  expect_error(expect_true(FALSE, label = c('label1', 'label2')), 
      'length\\(label\\) <= 1')
})

test_that("expect_that returns the result", {
  res <- expect_true(TRUE)
  expect_true(is.list(res) && res$passed && !res$error)
})