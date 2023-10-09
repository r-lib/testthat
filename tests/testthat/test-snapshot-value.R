test_that("can snapshot values", {
  x <- list("a", 1.5, 1L, TRUE)
  expect_snapshot_value(x, style = "json")
  expect_snapshot_value(x, style = "json2")
  expect_snapshot_value(x, style = "deparse")
  expect_snapshot_value(x, style = "serialize")
})

test_that("can control snapshot value details", {
  expect_snapshot_value(1.2, tolerance = 0.1)

  # including through ...
  f <- ~ 1
  expect_snapshot_value(f, style = "serialize", ignore_formula_env = TRUE)
})

test_that("tolerance passed to check_roundtrip", {
  expect_snapshot_value(0.900000000000001, style = "json")
})

test_that("reparse handles common cases", {
  roundtrip <- function(x) reparse(deparse(x))
  expect_equal(roundtrip(-1), -1)
  expect_equal(roundtrip(c(1, 2, 3)), c(1, 2, 3))
  expect_equal(roundtrip(list(1, 2, 3)), list(1, 2, 3))
  expect_equal(roundtrip(mtcars), mtcars)

  f <- function(x) x + 1
  expect_equal(roundtrip(f), f, ignore_function_env = TRUE)
})

test_that("errors if can't roundtrip", {
  snapper <- local_snapshotter()
  snapper$start_file("snapshot-4", "test")

  expect_error(expect_snapshot_value(NULL), "safely serialized")
})

test_that("check_roundtrip() gives nice error", {
  # disable crayon usage
  local_bindings(crayon = FALSE, .env = get_reporter())

  wrapper <- function(...) check_roundtrip(...)
  expect_snapshot(wrapper(NULL, list(), label = "foo", style = "json"), error = TRUE)
})
