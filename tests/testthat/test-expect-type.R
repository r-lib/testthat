context("expect_type")

test_that("expect_type checks typeof", {
  expect_success(expect_type(factor("a"), "integer"))
  expect_failure(expect_type(factor("a"), "double"))
})

test_that("expect_is checks class", {
  expect_success(expect_is(factor("a"), "factor"))
  expect_failure(expect_is(factor("a"), "integer"))
})

# Old school --------------------------------------------------------------

test_that("old school tests still work", {
  expect_success(expect_that(1L, is_a("integer")))
})
