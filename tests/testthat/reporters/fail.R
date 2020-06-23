

test_that("two failures", {
  expect_true(FALSE)
  expect_false(TRUE)
})

test_that("another failure", {
  expect_true(FALSE)
})
