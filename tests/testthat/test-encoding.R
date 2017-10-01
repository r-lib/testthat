context("encoding")

test_that("can source file with Latin-1 encoding", {
  expect_error(test_file("latin1.R", "stop", encoding = "latin1", wrap = FALSE), NA)
})

test_that("can source file with UTF-8 encoding", {
  expect_error(test_file("utf8.R", "stop", encoding = "UTF-8", wrap = FALSE), NA)
})

test_that("error with Latin-1 encoding mismatch", {
  expect_error(test_file("latin1.R", "stop", encoding = "UTF-8", wrap = FALSE))
})

test_that("error with UTF-8 encoding mismatch", {
  expect_error(test_file("utf8.R", "stop", encoding = "latin1", wrap = FALSE))
})
