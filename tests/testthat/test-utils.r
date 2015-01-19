context("Utils")

test_that("trim_whitespace works", {
  foo <- "\n\n\t  abc def ghi\n\t  \t"
  expect_identical(trim_whitespace(foo), "abc def ghi")
})

test_that("read_makevars doesn't fail", {
  makevars <- read_makevars(system.file(package = "stats"))
})
