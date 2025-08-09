test_that("can establish local snapshotter for testing", {
  snapper <- local_snapshotter(fail_on_new = FALSE)

  snapper$start_file("snapshot-1", "test")
  expect_true(snapper$is_active())
  expect_equal(snapper$file, "snapshot-1")
  expect_equal(snapper$test, "test")
})

test_that("basic workflow", {
  path <- withr::local_tempdir()
  snapper <- local_snapshotter(snap_dir = path, fail_on_new = FALSE)
  snapper$start_file("snapshot-2")
  # output if not active (because test not set here)
  expect_snapshot_output("x") |>
    expect_message("Can't save") |>
    expect_output("[1] \"x\"", fixed = TRUE)

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

test_that("only create new files for changed variants", {
  snapper <- local_snapshotter(fail_on_new = FALSE)
  snapper$start_file("variants", "test")
  expect_warning(expect_snapshot_output("x"), "Adding new")
  expect_warning(expect_snapshot_output("x", variant = "a"), "Adding new")
  expect_warning(expect_snapshot_output("x", variant = "b"), "Adding new")
  snapper$end_file()
  expect_setequal(
    snapper$snap_files(),
    c("variants.md", "a/variants.md", "b/variants.md")
  )

  # failure in default
  snapper$start_file("variants", "test")
  expect_failure(expect_snapshot_output("y"))
  expect_success(expect_snapshot_output("x", variant = "a"))
  expect_success(expect_snapshot_output("x", variant = "b"))
  snapper$end_file()
  expect_setequal(
    snapper$snap_files(),
    c("variants.md", "variants.new.md", "a/variants.md", "b/variants.md")
  )
  unlink(file.path(snapper$snap_dir, "variants.new.md"))

  # failure in variant
  snapper$start_file("variants", "test")
  expect_success(expect_snapshot_output("x"))
  expect_success(expect_snapshot_output("x", variant = "a"))
  expect_failure(expect_snapshot_output("y", variant = "b"))
  snapper$end_file()
  expect_setequal(
    snapper$snap_files(),
    c("variants.md", "a/variants.md", "b/variants.md", "b/variants.new.md")
  )
})

test_that("only reverting change in variant deletes .new", {
  snapper <- local_snapshotter(fail_on_new = FALSE)
  snapper$start_file("v", "test")
  expect_warning(expect_snapshot_output("x", variant = "a"), "Adding new")
  expect_warning(expect_snapshot_output("x", variant = "b"), "Adding new")
  snapper$end_file()
  expect_setequal(snapper$snap_files(), c("a/v.md", "b/v.md"))

  # failure
  snapper$start_file("v", "test")
  expect_failure(expect_snapshot_output("y", variant = "a"))
  snapper$end_file()
  expect_setequal(snapper$snap_files(), c("a/v.md", "b/v.md", "a/v.new.md"))

  # success
  snapper$start_file("v", "test")
  expect_success(expect_snapshot_output("x", variant = "a"))
  snapper$end_file()
  expect_setequal(snapper$snap_files(), c("a/v.md", "b/v.md"))
})


test_that("removing tests removes snap file", {
  path <- withr::local_tempdir()
  snapper <- local_snapshotter(snap_dir = path, fail_on_new = FALSE)
  snapper$start_file("snapshot-3", "test")
  expect_warning(expect_snapshot_output("x"), "Adding new")
  snapper$end_file()
  expect_true(file.exists(file.path(path, "snapshot-3.md")))

  snapper$start_file("snapshot-3", "test")
  snapper$end_file()
  expect_false(file.exists(file.path(path, "snapshot-3.md")))
})

test_that("errors in test doesn't change snapshot", {
  snapper <- local_snapshotter(fail_on_new = FALSE)

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
  snaps <- snap_from_md(brio::read_lines(path))
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
