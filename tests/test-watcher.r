context("Watcher components")

test_that("compare state works correctly", {
  loc <- tempfile("watcher", tmpdir = "/tmp")
  dir.create(loc)
  
  empty <- dir_state(loc)
  expect_that(length(empty), equals(0))
  
  file.create(file.path(loc, "test-1.txt"))
  one <- dir_state(loc)
  expect_that(length(one), equals(1))
  expect_that(basename(names(one)), equals("test-1.txt"))
  
  diff <- compare_state(empty, one)
  expect_that(diff$n, equals(1))
  expect_that(basename(diff$added), equals("test-1.txt"))
  
  write.table(mtcars, file.path(loc, "test-1.txt"))
  diff <- compare_state(one, dir_state(loc))
  expect_that(diff$n, equals(1))
  expect_that(basename(diff$modified), equals("test-1.txt"))
})