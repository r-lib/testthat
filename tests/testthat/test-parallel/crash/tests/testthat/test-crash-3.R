test_that("this crashes", {
  expect_true(TRUE)
  expect_true(FALSE)
  rlang::node_car(0)
})
