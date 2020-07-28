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

  # Changed returns FALSE
  path2 <- write_tmp_lines(letters[[2]])
  expect_false(snapshot_file_equal(tempdir(), "test.txt", path2))
  expect_true(file.exists(file.path(tempdir(), "test.txt")))
  expect_true(file.exists(file.path(tempdir(), "test.new.txt")))

  # Unchanged cleans up
  expect_true(snapshot_file_equal(tempdir(), "test.txt", path))
  expect_false(file.exists(file.path(tempdir(), "test.new.txt")))
})

# -------------------------------------------------------------------------

test_that("text comparison ignores CR", {
  path1 <- tempfile()
  path2 <- tempfile()
  brio::write_lines(c("a", "b"), path2)
  brio::write_lines(c("a", "b"), path1, eol = "\r\n")

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
