test_that("informs about files being accepted", {
  path <- local_snapshot_dir(c(
    "a.md",
    "a.new.md",
    "test/b.txt",
    "test/b.new.txt"
  ))

  expect_snapshot(snapshot_accept(path = path))
  expect_equal(
    dir(file.path(path, "_snaps"), recursive = TRUE),
    c("a.md", "test/b.txt")
  )
})

test_that("useful mesasge if no files to accept", {
  path <- local_snapshot_dir(character())
  expect_snapshot(snapshot_accept(path = path))
})

test_that("can accept files created by expect_snapshot()", {
  # without extension
  path <- local_snapshot_dir(c("a.md", "a.new.md", "b.md", "b.new.md"))
  suppressMessages(snapshot_accept("a", path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.md", "b.new.md"))

  # with extension
  path <- local_snapshot_dir(c("a.md", "a.new.md", "b.md", "b.new.md"))
  suppressMessages(snapshot_accept("a.md", path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.md", "b.new.md"))

  # or whole directory
  path <- local_snapshot_dir(c("a.md", "a.new.md", "b.md", "b.new.md"))
  suppressMessages(snapshot_accept(path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.md"))
})

test_that("can accept files created by expect_snapshot_file()", {
  path <- local_snapshot_dir(c("test/a.txt", "test/a.new.txt"))
  suppressMessages(snapshot_accept("test/a.txt", path = path))
  expect_equal(dir(file.path(path, "_snaps"), recursive = TRUE), "test/a.txt")

  # including markdown files
  path <- local_snapshot_dir(c("test/a.md", "test/a.new.md"))
  suppressMessages(snapshot_accept("test/", path = path))
  expect_equal(dir(file.path(path, "_snaps"), recursive = TRUE), "test/a.md")

  # or the whole directory
  path <- local_snapshot_dir(c(
    "test/a.md",
    "test/a.new.md",
    "test/b.txt",
    "test/b.new.txt"
  ))
  suppressMessages(snapshot_accept("test/", path = path))
  expect_equal(
    dir(file.path(path, "_snaps"), recursive = TRUE),
    c("test/a.md", "test/b.txt")
  )
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

test_that("snapshot_reject deletes .new files", {
  path <- local_snapshot_dir(c("a.md", "a.new.md", "b.md", "b.new.md"))

  expect_snapshot(snapshot_reject(path = path))
  expect_equal(dir(file.path(path, "_snaps")), c("a.md", "b.md"))
})


# snapshot_meta -----------------------------------------------------------

test_that("returns empty data frame for empty directory", {
  path <- tempfile()
  dir.create(path)

  expect_equal(nrow(snapshot_meta(path = path)), 0)
})
