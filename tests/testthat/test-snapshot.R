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
  expect_snapshot_value(x, exact = TRUE)
})

test_that("can establish local snapshotter for testing", {
  snapper <- local_snapshotter(file = "snapshot")
  snapper$start_test(NULL, "test")
  expect_true(snapper$is_active())
  expect_false(is.null(snapper$file))
  expect_equal(snapper$test, "test")
})

test_that("basic workflow", {
  # warns on first creation
  snapper <- local_snapshotter(file = "snapshot")
  snapper$start_test(NULL, "test")
  expect_warning(expect_snapshot_output("x"), "Adding new")
  snapper$end_file()

  # succeeds if unchanged
  snapper <- local_snapshotter(file = "snapshot")
  snapper$start_test(NULL, "test")
  expect_success(expect_snapshot_output("x"))
  snapper$end_file()

  # fails if changed
  snapper <- local_snapshotter(file = "snapshot")
  snapper$start_test(NULL, "test")
  expect_failure(expect_snapshot_output("y"))
  snapper$end_file()
  expect_true(file.exists("snaps/snapshot.new.json"))
})
