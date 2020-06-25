test_that("expected options are set by default", {
  expect_true(is_testing())
  expect_equal(testing_package(), "testthat")
  expect_false(is_interactive())
  expect_equal(Sys.getenv("R_TESTS"), "")
  expect_equal(edition_get(), 3L)
})

test_that("can override usual options", {
  local_test_directory(tempdir(), "methods")
  expect_equal(testing_package(), "methods")
})
