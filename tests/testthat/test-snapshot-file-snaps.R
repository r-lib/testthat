test_that("append manages current snapshot index", {
  path <- withr::local_tempdir()
  snaps <- FileSnaps$new(path, "file")

  i <- snaps$append("test1", NULL, 1)
  expect_equal(i, 1)
  i <- snaps$append("test1", NULL, 2)
  expect_equal(i, 2)
  i <- snaps$append("test2", NULL, 3)
  expect_equal(i, 1)
})

test_that("can retrieve appended snaps", {
  snaps <- FileSnaps$new(withr::local_tempdir(), "file")

  snaps$append("test1", NULL, "1")
  snaps$append("test1", NULL, "2")
  snaps$append("test2", NULL, "3")

  expect_equal(snaps$get("test1", NULL, 2), "2")
  expect_equal(snaps$get("test2", NULL, 1), "3")

  # Returns NULL if don't exist
  expect_equal(snaps$get("test2", NULL, 2), NULL)
  expect_equal(snaps$get("test3", NULL, 1), NULL)
})

test_that("can reset snapshots", {
  snaps1 <- FileSnaps$new(withr::local_tempdir(), "file")
  snaps2 <- FileSnaps$new(withr::local_tempdir(), "file")

  snaps1$append("test1", NULL, "1")
  snaps1$append("test1", NULL, "2")
  snaps2$append("test1", NULL, "3")

  snaps2$reset("test1", snaps1)
  expect_equal(snaps2$snaps$test1, c("3", "2"))

  # And shouldn't change if we reset again
  snaps2$reset("test1", snaps1)
  expect_equal(snaps2$snaps$test1, c("3", "2"))
})

test_that("can round trip cur to old snaps", {
  path <- withr::local_tempdir()
  cur <- FileSnaps$new(path, "file", "cur")
  cur$append("test1", NULL, "1")
  cur$append("test2", NULL, "2")
  cur$write()

  old <- FileSnaps$new(path, "file", "old")
  expect_equal(cur$snaps, old$snaps)
})

test_that("snaps delete file if it's empty", {
  snaps <- FileSnaps$new(withr::local_tempdir(), "file", "cur")
  write_lines("x", snaps$path())

  snaps$write()
  expect_false(file.exists(snaps$path()))
})
