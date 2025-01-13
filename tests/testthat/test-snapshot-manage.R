test_that("informs about files being accepted", {
  path <- local_snapshot_dir(c("a.md", "a.new.md", "b.md", "b.new.md"))

  expect_snapshot(snapshot_accept(path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.md"))

  expect_snapshot(snapshot_accept(path = path))
})

test_that("can accept specific files", {
  path <- local_snapshot_dir(c("a.md", "a.new.md", "b.md", "b.new.md"))
  expect_snapshot(snapshot_accept("a", path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.md", "b.new.md"))

  path <- local_snapshot_dir(c("test/a.txt", "test/a.new.txt"))
  expect_snapshot(snapshot_accept("test/a.txt", path = path))
  expect_equal(dir(file.path(path, "_snaps"), recursive = TRUE), "test/a.txt")

  # or whole directory
  path <- local_snapshot_dir(c("test/a.txt", "test/a.new.txt"))
  expect_snapshot(snapshot_accept("test/", path = path))
  expect_equal(dir(file.path(path, "_snaps"), recursive = TRUE), "test/a.txt")

  ## file names with dots
  path <- local_snapshot_dir(c("test/c.d.md", "test/c.d.new.md"))
  expect_snapshot(snapshot_accept("test/c.d.md", path = path))
  expect_equal(dir(file.path(path, "_snaps"), recursive = TRUE), "test/c.d.md")

  path <- local_snapshot_dir(c("test/c.d.md", "test/c.d.new.md"))
  expect_snapshot(snapshot_accept("test/c.d", path = path))
  expect_equal(dir(file.path(path, "_snaps"), recursive = TRUE), "test/c.d.md")

})

test_that("can work with variants", {
  # Can accept all
  path <- local_snapshot_dir(c("foo/a.md", "foo/a.new.md"))
  expect_snapshot(snapshot_accept(path = path))
  expect_equal(dir(file.path(path, "_snaps", "foo")), "a.md")

  # Can accept specified
  path <- local_snapshot_dir(c("foo/a.md", "foo/a.new.md"))
  expect_snapshot(snapshot_accept("foo/a", path = path))
  expect_equal(dir(file.path(path, "_snaps", "foo")), "a.md")
})


# snapshot_meta -----------------------------------------------------------

test_that("returns empty data frame for empty directory", {
  path <- tempfile()
  dir.create(path)

  expect_equal(nrow(snapshot_meta(path = path)), 0)
})
