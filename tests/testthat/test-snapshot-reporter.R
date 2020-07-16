
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
  expect_true(file.exists("_snaps/snapshot-2.md"))
  expect_false(file.exists("_snaps/snapshot-2.new.md"))

  # succeeds if unchanged
  snapper$start_file("snapshot-2", "test")
  expect_success(expect_snapshot_output("x"))
  snapper$end_file()
  expect_true(file.exists("_snaps/snapshot-2.md"))
  expect_false(file.exists("_snaps/snapshot-2.new.md"))

  # fails if changed
  snapper$start_file("snapshot-2", "test")
  expect_failure(expect_snapshot_output("y"))
  snapper$end_file()
  expect_true(file.exists("_snaps/snapshot-2.md"))
  expect_true(file.exists("_snaps/snapshot-2.new.md"))
})

test_that("removing tests removes snap file", {
  withr::local_dir(tempdir())
  snapper <- local_snapshotter(cleanup = TRUE)
  snapper$start_file("snapshot-3", "test")
  expect_warning(expect_snapshot_output("x"), "Adding new")
  snapper$end_file()
  expect_true(file.exists("_snaps/snapshot-3.md"))

  snapper$start_file("snapshot-3", "test")
  snapper$end_file()
  expect_false(file.exists("_snaps/snapshot-3.md"))
})

test_that("errors if can't roundtrip", {
  snapper <- local_snapshotter(cleanup = TRUE)
  snapper$start_file("snapshot-4", "test")

  expect_error(expect_snapshot_value(NULL), "not symmetric")
})

test_that("errors in test doesn't change snapshot", {
  withr::local_dir(tempdir())
  snapper <- local_snapshotter(cleanup = TRUE)

  # First run
  snapper$start_file("snapshot-5", "test")
  expect_warning(expect_snapshot_output("x"), "Adding new")
  snapper$end_file()

  # Second run has error
  snapper$start_file("snapshot-5", "test")
  snapper$add_result(NULL, NULL, as.expectation(simpleError("error")))
  snapper$end_file()

  # Third run
  snapper$start_file("snapshot-5", "test")
  expect_warning(expect_snapshot_output("x"), NA)
  snapper$end_file()

  # Warns if snapshot already happened
  snapper$start_file("snapshot-5", "test")
  expect_snapshot_output("x")
  expect_warning(
    snapper$add_result(NULL, NULL, as.expectation(simpleError("error"))),
    "reset"
  )
  snapper$end_file()

})
