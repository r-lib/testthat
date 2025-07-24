test_that("helpers are not on the path", {
  expect_false(
    "my_helper" %in% names(rlang::pkg_env("testConfigLoadAll"))
  )
})

test_that("internal functions are not on the path", {
  fns <- names(rlang::pkg_env("testConfigLoadAll"))
  expect_false("internal" %in% fns)
  expect_true("exported" %in% fns)
})
