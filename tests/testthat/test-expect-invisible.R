context("test-expect-invisible")

test_that("basically principles of visibilty hold", {
  expect_success(expect_invisible(x <- 10))
  expect_failure(expect_invisible(x))

  expect_success(expect_visible(x))
  expect_failure(expect_visible(x <- 1))
})

test_that("invisibly returns evaluated value", {
  out <- expect_invisible(expect_invisible(x <- 2 + 2))
  expect_equal(out, 4)

  out <- expect_invisible(expect_visible(2 + 2))
  expect_equal(out, 4)
})
