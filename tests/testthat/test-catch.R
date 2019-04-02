test_that("get_routine() finds own 'run_testthat_tests'", {
  routine <- get_routine("testthat", "run_testthat_tests")
  expect_is(routine, "NativeSymbolInfo")
})

test_that("get_routine() fails when no routine exists", {
  expect_error(get_routine("utils", "no_such_routine"))
})
