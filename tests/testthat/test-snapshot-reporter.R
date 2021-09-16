
test_that("can establish local snapshotter for testing", {
  snapper <- local_snapshotter()

  snapper$start_file("snapshot-1", "test")
  expect_true(snapper$is_active())
  expect_equal(snapper$file, "snapshot-1")
  expect_equal(snapper$test, "test")
})

test_that("basic workflow", {
  path <- withr::local_tempdir()
  snapper <- local_snapshotter(path)
  snapper$start_file("snapshot-2")
  # output if not active (because test not set here)
  expect_message(expect_snapshot_output("x"), "Can't compare")

  # warns on first creation
  snapper$start_file("snapshot-2", "test")
  expect_warning(expect_snapshot_output("x"), "Adding new")
  snapper$end_file()
  expect_true(file.exists(file.path(path, "snapshot-2.md")))
  expect_false(file.exists(file.path(path, "snapshot-2.new.md")))

  # succeeds if unchanged
  snapper$start_file("snapshot-2", "test")
  expect_success(expect_snapshot_output("x"))
  snapper$end_file()
  expect_true(file.exists(file.path(path, "snapshot-2.md")))
  expect_false(file.exists(file.path(path, "snapshot-2.new.md")))

  # fails if changed
  snapper$start_file("snapshot-2", "test")
  expect_failure(expect_snapshot_output("y"))
  snapper$end_file()
  expect_true(file.exists(file.path(path, "snapshot-2.md")))
  expect_true(file.exists(file.path(path, "snapshot-2.new.md")))
})

test_that("removing tests removes snap file", {
  path <- withr::local_tempdir()
  snapper <- local_snapshotter(path)
  snapper$start_file("snapshot-3", "test")
  expect_warning(expect_snapshot_output("x"), "Adding new")
  snapper$end_file()
  expect_true(file.exists(file.path(path, "snapshot-3.md")))

  snapper$start_file("snapshot-3", "test")
  snapper$end_file()
  expect_false(file.exists(file.path(path, "snapshot-3.md")))
})

test_that("errors if can't roundtrip", {
  snapper <- local_snapshotter()
  snapper$start_file("snapshot-4", "test")

  expect_error(expect_snapshot_value(NULL), "not symmetric")
})

test_that("errors in test doesn't change snapshot", {
  snapper <- local_snapshotter()

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

  # No warning if snapshot already happened
  snapper$start_file("snapshot-5", "test")
  expect_snapshot_output("x")
  expect_warning(
    snapper$add_result(NULL, NULL, as.expectation(simpleError("error"))),
    NA
  )
  snapper$end_file()
})

test_that("skips and unexpected errors reset snapshots", {
  regenerate <- FALSE

  if (regenerate) {
    withr::local_envvar(c(TESTTHAT_REGENERATE_SNAPS = "true"))
  }

  catch_cnd(
    test_file(
      test_path("test-snapshot", "test-snapshot.R"),
      reporter = NULL
    )
  )

  path <- "test-snapshot/_snaps/snapshot.md"
  stopifnot(file.exists(path))

  snaps <- snap_from_md(read_lines(path))
  titles <- c("errors reset snapshots", "skips reset snapshots")
  expect_true(all(titles %in% names(snaps)))
})

test_that("`expect_error()` can fail inside `expect_snapshot()`", {
  out <- test_file(
    test_path("test-snapshot", "test-expect-condition.R"),
    reporter = NULL
  )
  err <- out[[1]]$results[[1]]
  expect_match(err$message, "did not throw the expected error")
})
