test_that("snapshot cleanup makes nice message if needed", {
  dir <- local_snap_dir(c("a.md", "b.md"))
  expect_snapshot({
    snapshot_cleanup(dir)
    snapshot_cleanup(dir, c("a", "b"))
  })
})

test_that("detects outdated snapshots", {
  dir <- local_snap_dir(c("a.md", "b.md", "b.new.md"))
  expect_equal(snapshot_outdated(dir, c("a", "b")), character())
  expect_equal(snapshot_outdated(dir, "a"), c("b.md", "b.new.md"))
  expect_equal(snapshot_outdated(dir, "b"), "a.md")
  expect_equal(snapshot_outdated(dir), c("a.md", "b.md", "b.new.md"))
})

test_that("preserves variants", {
  dir <- local_snap_dir(c("a.md", "windows/a.md", "windows/b.md"))
  expect_equal(snapshot_outdated(dir, "a"), "windows/b.md")
})

test_that("detects outdated snapshot files", {
  dir <- local_snap_dir(c("a/foo.txt", "b/foo.txt", "b/foo.new.txt"))

  expect_equal(
    snapshot_outdated(dir, character(), character()),
    c("a/foo.txt", "b/foo.new.txt", "b/foo.txt")
  )
  expect_equal(
    snapshot_outdated(dir, character(), "a/foo.txt"),
    c("b/foo.new.txt", "b/foo.txt")
  )
  expect_equal(
    snapshot_outdated(dir, character(), "b/foo.txt"),
    "a/foo.txt"
  )
  expect_equal(
    snapshot_outdated(dir, character(), c("a/foo.txt", "b/foo.txt")),
    character()
  )
})

test_that("detects individual snapshots files to remove", {
  dir <- local_snap_dir(c("a/a1", "a/a2", "b/b1"))
  expect_equal(
    snapshot_outdated(dir, c("a", "b"), "a/a1"),
    c("a/a2", "b/b1")
  )
})
