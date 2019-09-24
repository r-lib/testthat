library(testthat)
options(testthat.use_colours = FALSE)

out <- test_that("running succeeding test outside of test reporter works", {
  expect_true(TRUE)
})
expect_true(out)

err <- rlang::catch_cnd(
  test_that("running failing test outside of test reporter is an error", {
    expect_true(FALSE)
  })
)
expect_is(err, "error")

test_check("testthat")
