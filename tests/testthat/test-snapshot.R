test_that("can snapshot output", {
  foo <- function() "y"
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
})

test_that("even with multiple lines", {
  expect_snapshot_output(cat("a\nb\nc"))
  expect_snapshot_output(cat("a\nb\nc\n"))
})

test_that("can snapshot values", {
  x <- list("a", 1.5, 1L, TRUE)
  expect_snapshot_value(x, style = "json")
  expect_snapshot_value(x, style = "json2")
  expect_snapshot_value(x, style = "deparse")
  expect_snapshot_value(x, style = "serialize")
})

test_that("can snapshot conditions", {
  expect_snapshot_condition(stop("!"))
  expect_snapshot_condition(abort("!", x = 1:5))
})
