test_that("get_routine() finds own 'run_testthat_tests'", {
  routine <- get_routine("testthat", "run_testthat_tests")
  expect_s3_class(routine, "NativeSymbolInfo")
})

test_that("get_routine() fails when no routine exists", {
  expect_snapshot(error = TRUE, get_routine("utils", "no_such_routine"))
})

test_that("validates inputs", {
  expect_snapshot(error = TRUE, {
    expect_cpp_tests_pass(123)
    run_cpp_tests(123)
  })
})

test_that("useful messaging", {
  path <- withr::local_tempdir()
  writeLines("Package: foo", file.path(path, "DESCRIPTION"))
  dir.create(file.path(path, "R"))

  expect_snapshot(use_catch(path))
})

skip_if_not_installed("xml2")
run_cpp_tests("testthat")
