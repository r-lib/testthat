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
  snapper <- local_snapshotter(cleanup = TRUE)

  snapper$start_file("snapshot-1", "test")
  expect_true(snapper$is_active())
  expect_equal(snapper$file, "snapshot-1")
  expect_equal(snapper$test, "test")
})

test_that("basic workflow", {
  withr::local_dir(tempdir())
  snapper <- local_snapshotter(cleanup = TRUE)
  snapper$start_file("snapshot-2")
  # output if not active (because test not set here)
  expect_output(expect_snapshot_output("x"), "No snapshotter active")

  # warns on first creation
  snapper$start_file("snapshot-2", "test")
  expect_warning(expect_snapshot_output("x"), "Adding new")
  snapper$end_file()
  expect_true(file.exists("snaps/snapshot-2.json"))
  expect_false(file.exists("snaps/snapshot-2.new.json"))

  # succeeds if unchanged
  snapper$start_file("snapshot-2", "test")
  expect_success(expect_snapshot_output("x"))
  snapper$end_file()
  expect_true(file.exists("snaps/snapshot-2.json"))
  expect_false(file.exists("snaps/snapshot-2.new.json"))

  # fails if changed
  snapper$start_file("snapshot-2", "test")
  expect_failure(expect_snapshot_output("y"))
  snapper$end_file()
  expect_true(file.exists("snaps/snapshot-2.json"))
  expect_true(file.exists("snaps/snapshot-2.new.json"))
})

test_that("removing tests removes snap file", {
  withr::local_dir(tempdir())
  snapper <- local_snapshotter(cleanup = TRUE)
  snapper$start_file("snapshot-3", "test")
  expect_warning(expect_snapshot_output("x"), "Adding new")
  snapper$end_file()
  expect_true(file.exists("snaps/snapshot-3.json"))

  snapper$start_file("snapshot-3", "test")
  snapper$end_file()
  expect_false(file.exists("snaps/snapshot-3.json"))
})
