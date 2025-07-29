test_that("pass() succeeds and returns value", {
  expect_success(pass("x"))
  expect_invisible(pass("x"))
  expect_equal(pass("x"), "x")
})
