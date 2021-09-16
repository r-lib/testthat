test_that("append manages current snapshot index", {
  path <- withr::local_tempdir()
  snaps <- FileSnaps$new(path, "file")

  i <- snaps$append("test1", "_default", 1)
  expect_equal(i, 1)
  i <- snaps$append("test1", "_default", 2)
  expect_equal(i, 2)
  i <- snaps$append("test1", "windows", 3)
  expect_equal(i, 1)
  i <- snaps$append("test1", "windows", 3)
  expect_equal(i, 2)

  i <- snaps$append("test2", "_default", 3)
  expect_equal(i, 1)
})

test_that("can retrieve appended snaps", {
  snaps <- FileSnaps$new(withr::local_tempdir(), "file")

  snaps$append("test1", "_default", "1")
  snaps$append("test1", "_default", "2")
  snaps$append("test2", "_default", "3")
  snaps$append("test2", "windows", "4")

  expect_equal(snaps$get("test1", "_default", 2), "2")
  expect_equal(snaps$get("test2", "_default", 1), "3")
  expect_equal(snaps$get("test2", "windows", 1), "4")

  # Returns NULL if don't exist
  expect_equal(snaps$get("MISSING", "_default", 1), NULL)
  expect_equal(snaps$get("test1", "MISSING", 1), NULL)
  expect_equal(snaps$get("test1", "_default", 100), NULL)
})

test_that("can reset snapshots", {
  snaps1 <- FileSnaps$new(withr::local_tempdir(), "file")
  snaps2 <- FileSnaps$new(withr::local_tempdir(), "file")

  snaps1$append("test1", "_default", "1")
  snaps1$append("test1", "_default", "2")
  snaps1$append("test2", "_default", "3")

  snaps2$append("test1", "_default", "4")

  snaps2$reset("test1", snaps1)
  expect_equal(snaps2$snaps$`_default`$test1, c("4", "2"))

  # And can copy complete snapshot
  snaps2$reset("test2", snaps1)
  expect_equal(snaps2$snaps$`_default`$test2, "3")

  # And shouldn't change if we reset again
  snaps2$reset("test1", snaps1)
  expect_equal(snaps2$snaps$`_default`$test1, c("4", "2"))
})

test_that("can round trip cur to old snaps", {
  path <- withr::local_tempdir()
  cur <- FileSnaps$new(path, "file", "cur")
  cur$append("test1", "_default", "1")
  cur$append("test2", "_default", "2")
  cur$append("test2", "windows", "3")
  cur$write()

  old <- FileSnaps$new(path, "file", "old")
  expect_equal(cur$snaps, old$snaps)
})

test_that("snaps delete default variant if no snaps", {
  snaps <- FileSnaps$new(withr::local_tempdir(), "file", "cur")
  write_lines("x", snaps$path())

  snaps$write()
  expect_false(file.exists(snaps$path()))
})
