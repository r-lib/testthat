test_that("can snapshot output", {
  foo <- function() "y"
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
})

test_that("can snapshot values", {
  x <- list("a", 1.5, 1L, TRUE)
  expect_snapshot_value(x)
  expect_snapshot_value(x, serialize = TRUE)
})
