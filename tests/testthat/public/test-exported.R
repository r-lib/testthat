context("Exported functions")

test_that("Running the public tests runs its helper", {
  expect_identical(public.var, 42)
})

test_that("Functions that aren't exported can't be found in public context", {
  expect_error(.function_not_exported(),
    'could not find function ".function_not_exported"')
})
