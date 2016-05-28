context("expect-self-test")

test_that("fail always fails",  {
  expect_failure(fail())
  expect_failure(fail("abc"), "abc")
})

test_that("succeed always succeeds", {
  expect_success(succeed())
})
