context("fail")

test_that("fail always fails",  {
  expect_failure(fail())
  expect_failure(fail("abc"), "abc")
})
