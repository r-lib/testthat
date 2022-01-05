test_that("informs about files being accepted", {
  path <- local_snapshot_dir(c("a", "a.new", "b", "b.new"))

  expect_snapshot(snapshot_accept(path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.md"))

  expect_snapshot(snapshot_accept(path = path))
})

test_that("can accept specific files", {
  path <- local_snapshot_dir(c("a", "a.new", "b", "b.new"))
  expect_snapshot(snapshot_accept("a", path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.md", "b.new.md"))
})

test_that("can work with variants", {
  # Can accept all
  path <- local_snapshot_dir(c("foo/a", "foo/a.new"))
  expect_snapshot(snapshot_accept(path = path))
  expect_equal(dir(file.path(path, "_snaps", "foo")), "a.md")

  # Can accept specified
  path <- local_snapshot_dir(c("foo/a", "foo/a.new"))
  expect_snapshot(snapshot_accept("foo/a", path = path))
  expect_equal(dir(file.path(path, "_snaps", "foo")), "a.md")
})


# snapshot_meta -----------------------------------------------------------

test_that("returns empty data frame for empty directory", {
  path <- tempfile()
  dir.create(path)

  expect_equal(nrow(snapshot_meta(path = path)), 0)
})
