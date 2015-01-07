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

test_that("expect shuffle find an error when shuffling causes failure", {
  # sprintf needs a format string first, so will throw error when it is shuffled
  # out of first place.
  res <- expect_that_combine(paste("jack", "string1", "string2"), not(throws_error()))
  expect_true(is.list(res) && res$passed && !res$error)

  # all these are invalid, can't sum strings
  res <- expect_that_combs(sqrt("string1", "string2"), throws_error())
  expect_true(is.list(res) && res$passed && !res$error)

  # this fails because SOME combinations work, and some fail. Haven't figured out how to AND or OR results yet.
  #res <- expect_that_combs(sprintf("%s", "string1", "string2"), throws_error())
  #expect_true(is.list(res) && res$passed && !res$error)
})
