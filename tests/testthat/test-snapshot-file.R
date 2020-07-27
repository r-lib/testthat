test_that("basic workflow", {
  write_tmp_lines <- function(lines, ext = ".txt") {
    path <- tempfile(fileext = ext)
    brio::write_lines(lines, path)
    path
  }

  withr::local_dir(tempdir())
  snapper <- local_snapshotter(cleanup = TRUE)
  snapper$start_file("snapshot-6", "test")
  expect_warning(expect_snapshot_file(write_tmp_lines(letters), "letters.txt"), "Adding new")
  snapper$end_file()
  expect_true(file.exists("_snaps/snapshot-6/letters.txt"))
  expect_false(file.exists("_snaps/snapshot-6/letters.new.txt"))

  # succeeds if unchanged
  snapper$start_file("snapshot-6", "test")
  expect_success(expect_snapshot_file(write_tmp_lines(letters), "letters.txt"))
  snapper$end_file()
  expect_true(file.exists("_snaps/snapshot-6/letters.txt"))
  expect_false(file.exists("_snaps/snapshot-6/letters.new.txt"))

  # fails if changed
  snapper$start_file("snapshot-6", "test")
  expect_failure(expect_snapshot_file(write_tmp_lines(letters[-1]), "letters.txt"))
  snapper$end_file()
  expect_true(file.exists("_snaps/snapshot-6/letters.txt"))
  expect_true(file.exists("_snaps/snapshot-6/letters.new.txt"))

  # cleans up if reverted
  snapper$start_file("snapshot-6", "test")
  expect_success(expect_snapshot_file(write_tmp_lines(letters), "letters.txt"))
  snapper$end_file()
  expect_true(file.exists("_snaps/snapshot-6/letters.txt"))
  expect_false(file.exists("_snaps/snapshot-6/letters.new.txt"))
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
