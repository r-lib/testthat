test_that("basic principles of visibility hold", {
  expect_success(expect_invisible(x <- 10))
  expect_failure(expect_invisible(x))

  expect_success(expect_visible(x))
  expect_failure(expect_visible(x <- 1))
})

test_that("generates useful failure messages", {

  expect_snapshot_failure(expect_visible(invisible(1)))
  expect_snapshot_failure(expect_invisible(1))

})

test_that("invisibly returns evaluated value", {
  out <- expect_invisible(expect_invisible(x <- 2 + 2))
  expect_equal(out, 4)

  out <- expect_invisible(expect_visible(2 + 2))
  expect_equal(out, 4)
})
