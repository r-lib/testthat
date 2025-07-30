test_that("expect_snapshot_file works", {
  expect_snapshot_file(
    write_tmp_lines(letters),
    "foo.r",
    compare = compare_file_text
  )

  path <- withr::local_tempfile()
  png(path, width = 300, height = 300, type = "cairo")
  plot(1:10, xlab = "", ylab = "", pch = 20, cex = 5, axes = FALSE)
  dev.off()
  expect_snapshot_file(path, "foo.png")

  path <- withr::local_tempfile()
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


test_that("expect_snapshot_file works in a different directory", {
  path <- withr::local_tempdir()
  withr::local_dir(path)

  brio::write_lines("a", "a.txt", eol = "\r\n")

  # expect no warning
  expect_warning(
    expect_snapshot_file("a.txt"),
    regexp = NA
  )
})

test_that("expect_snapshot_file works with variant", {
  expect_snapshot_file(
    write_tmp_lines(r_version()),
    "version.txt",
    compare = compare_file_text,
    variant = r_version()
  )
})

test_that("basic workflow", {
  snapper <- local_snapshotter()

  # warns on first run
  snapper$start_file("snapshot-6", "test")
  expect_warning(
    expect_snapshot_file(write_tmp_lines(letters), "letters.txt"),
    "Adding new"
  )
  snapper$end_file()

  # succeeds if unchanged
  snapper$start_file("snapshot-6", "test")
  expect_success(expect_snapshot_file(write_tmp_lines(letters), "letters.txt"))
  snapper$end_file()

  # fails if changed
  snapper$start_file("snapshot-6", "test")
  expect_failure(expect_snapshot_file(
    write_tmp_lines(letters[-1]),
    "letters.txt"
  ))
  snapper$end_file()
})

test_that("can announce snapshot file", {
  snapper <- local_snapshotter()
  snapper$start_file("snapshot-announce", "test")
  announce_snapshot_file(name = "bar.svg")
  expect_equal(snapper$snap_file_seen, "snapshot-announce/bar.svg")
})

test_that("can transform snapshot contents", {
  path <- withr::local_tempfile(lines = c("secret", "ssh secret squirrel"))

  redact <- function(x) gsub("secret", "<redacted>", x)
  expect_snapshot_file(path, "secret.txt", transform = redact)
})

# snapshot_file_equal -----------------------------------------------------

test_that("warns on first creation", {
  path <- write_tmp_lines("a")
  withr::defer(unlink(file.path(tempdir(), "test.txt")))

  # Warns on first run
  expect_warning(
    expect_true(snapshot_file_equal(tempdir(), "test.txt", NULL, path)),
    "new file snapshot"
  )

  # Errors on non-existing file
  expect_error(
    expect_true(snapshot_file_equal(
      tempdir(),
      "test.txt",
      NULL,
      "doesnt-exist.txt"
    )),
    "`doesnt-exist.txt` not found"
  )

  # Unchanged returns TRUE
  expect_true(snapshot_file_equal(tempdir(), "test.txt", NULL, path))
  expect_true(file.exists(file.path(tempdir(), "test.txt")))
  expect_false(file.exists(file.path(tempdir(), "test.new.txt")))

  # Changed returns FALSE
  path2 <- write_tmp_lines("b")
  expect_false(snapshot_file_equal(tempdir(), "test.txt", NULL, path2))
  expect_true(file.exists(file.path(tempdir(), "test.txt")))
  expect_true(file.exists(file.path(tempdir(), "test.new.txt")))

  # Changing again overwrites
  path2 <- write_tmp_lines("c")
  expect_false(snapshot_file_equal(tempdir(), "test.txt", NULL, path2))
  expect_equal(brio::read_lines(file.path(tempdir(), "test.new.txt")), "c")

  # Unchanged cleans up
  expect_true(snapshot_file_equal(tempdir(), "test.txt", NULL, path))
  expect_true(file.exists(file.path(tempdir(), "test.txt")))
  expect_false(file.exists(file.path(tempdir(), "test.new.txt")))
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
  snapshot_review_hint <- function(...) {
    testthat:::snapshot_review_hint(..., reset_output = FALSE)
  }

  expect_snapshot(cat(snapshot_review_hint(
    "lala",
    "foo.r",
    check = FALSE,
    ci = FALSE
  )))
  expect_snapshot(cat(snapshot_review_hint(
    "lala",
    "foo.r",
    check = TRUE,
    ci = FALSE
  )))
  expect_snapshot(cat(snapshot_review_hint(
    "lala",
    "foo.r",
    check = TRUE,
    ci = TRUE
  )))
})
