context("encoding")

test_that("can source file with Latin-1 encoding", {
  expect_error(test_file("latin1.R", "stop", encoding = "latin1"), NA)
})

test_that("can source file with UTF-8 encoding", {
  expect_error(test_file("utf8.R", "stop", encoding = "UTF-8"), NA)
})

test_that("error with Latin-1 encoding mismatch", {
  expect_error(test_file("latin1.R", "stop", encoding = "UTF-8"))
})

test_that("error with UTF-8 encoding mismatch", {
  expect_error(test_file("utf8.R", "stop", encoding = "latin1"))
})
