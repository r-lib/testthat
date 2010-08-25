if (interactive()) {
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

    file.rename(file.path(loc, "test-1.txt"), file.path(loc, "test-2.txt"))
    diff <- compare_state(one, dir_state(loc))
    expect_that(diff$n, equals(2))
    expect_that(basename(diff$deleted), equals("test-1.txt"))
    expect_that(basename(diff$added), equals("test-2.txt"))
  })


  test_that("watcher works correctly", {
      loc <- tempfile("watcher", tmpdir = "/tmp")
      dir.create(loc)

      code_path = file.path(loc, "R")
      test_path = file.path(loc, "tests")

      dir.create(code_path)
      dir.create(test_path)
    
      delayed.bash.cmd <- function(command) {
        system(str_c("sleep 1;", command), wait=FALSE)
      }

      add.code.file <- function(file.name) {
        delayed.bash.cmd(str_c("touch ", file.path(code_path, file.name)))
      }

      remove.code.file <- function(file.name) {
        delayed.bash.cmd(str_c("rm ", file.path(code_path, file.name)))
      }

      test.added <- function(added, deleted, modified) {
        expect_that(length(added), equals(1))
        expect_that(grepl("test1.R", added), is_true())
        expect_that(length(deleted), equals(0))
        expect_that(length(modified), equals(0))
        FALSE
      }
   
      test.removed <- function(added, deleted, modified) {
        expect_that(length(added), equals(0))
        expect_that(length(deleted), equals(1))
        expect_that(grepl("test1.R", deleted), is_true())
        expect_that(length(modified), equals(0))
        FALSE
      }

      add.code.file("test1.R")
      watch(c(code_path, test_path), test.added)

      remove.code.file("test1.R")
      watch(c(code_path, test_path), test.removed)
  })
}