test_that("expect_snapshot_file works", {
  skip_if_not(getRversion() >= "3.6.0")
  expect_snapshot_file(
    write_tmp_lines(letters),
    "foo.r",
    compare = compare_file_text
  )

  path <- tempfile()
  png(path, width = 300, height = 300, type = "cairo")
  plot(1:10, xlab = "", ylab = "", pch = 20, cex = 5, axes = FALSE)
  dev.off()
  expect_snapshot_file(path, "foo.png")

  path <- tempfile()
  mtcars2 <- mtcars
  # mtcars2$wt[10] <- NA
  write.csv(mtcars2, path)
  expect_snapshot_file(
    path,
    "foo.csv",
    compare = compare_file_text
  )

  # Deprecated `binary` argument still works
  withr::local_options(lifecycle_verbosity = "quiet")
  expect_snapshot_file(
    path,
    "foo.csv",
    binary = FALSE
  )
})

test_that("basic workflow", {
  snapper <- local_snapshotter(tempfile(), cleanup = TRUE)

  # warns on first run
  snapper$start_file("snapshot-6", "test")
  expect_warning(expect_snapshot_file(write_tmp_lines(letters), "letters.txt"), "Adding new")
  snapper$end_file()

  # succeeds if unchanged
  snapper$start_file("snapshot-6", "test")
  expect_success(expect_snapshot_file(write_tmp_lines(letters), "letters.txt"))
  snapper$end_file()

  # fails if changed
  snapper$start_file("snapshot-6", "test")
  expect_failure(expect_snapshot_file(write_tmp_lines(letters[-1]), "letters.txt"))
  snapper$end_file()
})

test_that("can announce snapshot file", {
  snapper <- local_snapshotter(tempfile(), cleanup = TRUE)
  snapper$start_file("snapshot-announce", "test")
  announce_snapshot_file(name = "bar.svg")
  expect_true("snapshot-announce/bar.svg" %in% names(snapper$snap_file_seen))
})


# snapshot_file_equal -----------------------------------------------------

test_that("warns on first creation", {
  path <- write_tmp_lines(letters[[1]])
  withr::defer(unlink(file.path(tempdir(), "test.txt")))

  # Warns on first run
  expect_warning(
    expect_true(snapshot_file_equal(tempdir(), "test.txt", path)),
    "new file snapshot"
  )

  # Unchanged returns TRUE
  expect_true(snapshot_file_equal(tempdir(), "test.txt", path))
  expect_true(file.exists(file.path(tempdir(), "test.txt")))
  expect_false(file.exists(file.path(tempdir(), "test.new.txt")))

  # Changed returns FALSE
  path2 <- write_tmp_lines(letters[[2]])
  expect_false(snapshot_file_equal(tempdir(), "test.txt", path2))
  expect_true(file.exists(file.path(tempdir(), "test.txt")))
  expect_true(file.exists(file.path(tempdir(), "test.new.txt")))

  # Unchanged cleans up
  expect_true(snapshot_file_equal(tempdir(), "test.txt", path))
  expect_true(file.exists(file.path(tempdir(), "test.txt")))
  expect_false(file.exists(file.path(tempdir(), "test.new.txt")))
})


# clean up ----------------------------------------------------------------

test_that("detects entire tests to remove", {
  dir <- local_snap_dir(c("a/foo.txt", "b/foo.txt"))

  expect_equal(
    snapshot_file_outdated(dir, character(), character()),
    file.path(dir, c("a", "b"))
  )
  expect_equal(
    snapshot_file_outdated(dir, "a", "a/foo.txt"),
    file.path(dir, "b")
  )
  expect_equal(
    snapshot_file_outdated(dir, c("a", "b"), c("a/foo.txt", "b/foo.txt")),
    character()
  )
})

test_that("detects individual snapshots to remove", {
  dir <- local_snap_dir(c("a/a1", "a/a2", "b/b1"))
  expect_equal(
    snapshot_file_outdated(dir, c("a", "b"), "a/a1"),
    file.path(dir, c("a/a2", "b/b1"))
  )
})

test_that("doesn't touch files in root dir", {
  dir <- local_snap_dir(c("a.md", "b.md"))
  expect_equal(snapshot_file_outdated(dir), character())
})

test_that("doesn't remove .new files", {
  dir <- local_snap_dir(c("a/a1.txt", "a/a1.new.txt"))
  expect_equal(
    snapshot_file_outdated(dir, "a", "a/a1.txt"),
    character()
  )
})

# helpers -----------------------------------------------------------------

test_that("text comparison ignores CR", {
  path1 <- write_tmp_lines(c("a", "b"))
  path2 <- write_tmp_lines(c("a", "b"), eol = "\r\n")

  expect_false(compare_file_binary(path1, path2))
  expect_true(compare_file_text(path1, path2))
})

test_that("split_path handles edge cases", {
  expect_equal(split_path(""), list(dir = "", name = "", ext = ""))

  expect_equal(split_path("a"), list(dir = "", name = "a", ext = ""))
  expect_equal(split_path("a"), list(dir = "", name = "a", ext = ""))
  expect_equal(split_path(".b"), list(dir = "", name = "", ext = "b"))
  expect_equal(split_path(".b.c"), list(dir = "", name = "", ext = "b.c"))

  expect_equal(split_path("x/a"), list(dir = "x", name = "a", ext = ""))
  expect_equal(split_path("x/a"), list(dir = "x", name = "a", ext = ""))
  expect_equal(split_path("x/.b"), list(dir = "x", name = "", ext = "b"))
  expect_equal(split_path("x/.b.c"), list(dir = "x", name = "", ext = "b.c"))
})

test_that("snapshot_hint output differs in R CMD check", {
  expect_snapshot(cat(snapshot_hint("lala", "foo.r", check = FALSE, ci = FALSE)))
  expect_snapshot(cat(snapshot_hint("lala", "foo.r", check = TRUE, ci = FALSE)))
  expect_snapshot(cat(snapshot_hint("lala", "foo.r", check = TRUE, ci = TRUE)))
})
