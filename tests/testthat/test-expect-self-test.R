test_that("fail always fails", {
  expect_failure(fail())
  expect_failure(fail("abc"), "abc")
})

test_that("succeed always succeeds", {
  expect_success(succeed())
})

test_that("expect_success errors if null", {
  expect_error(expect_success(NULL))
})

test_that("expect_success errors with msg", {
  expect_error(expect_success(stop("asdf")), 'asdf')
})

test_that("expect_failure errors if null", {
  expect_error(expect_failure(NULL))
})

test_that("expect_failure errors if no failure", {
  expect_error(expect_failure(TRUE))
})

test_that("show_failure", {
  expect_null(show_failure(NULL))
  expect_output(show_failure(expect_true(FALSE)), "FALSE is not TRUE")
})

test_that("can test for presence and absense of failure", {
  expect_success(expect_failure(fail()))
  expect_success(expect_no_failure(succeed()))

  expect_failure(expect_failure(succeed()))
  expect_failure(expect_no_failure(fail()))
})

test_that("can test for presence and absense of success", {
  expect_success(expect_success(succeed()))
  expect_success(expect_no_success(fail()))

  expect_failure(expect_success(fail()))
  expect_failure(expect_no_success(succeed()))
})
