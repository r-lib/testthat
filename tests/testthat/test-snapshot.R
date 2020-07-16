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
  expect_snapshot_condition(stop("!"), "error")
  expect_snapshot_condition(abort("!", x = 1:5), "error")
})

# snapshot_accept ---------------------------------------------------------

test_that("informs about files being accepted", {
  path <- local_snapshot_dir(c("a", "b"))

  expect_snapshot_message(snapshot_accept(path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.md"))

  expect_snapshot_message(snapshot_accept(path = path))
})

test_that("can accept specific files", {
  path <- local_snapshot_dir(c("a", "b"))
  expect_snapshot_message(snapshot_accept("a", path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.new.md"))
})
