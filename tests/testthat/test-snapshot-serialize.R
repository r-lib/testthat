test_that("single test case can roundtrip", {
  x <- list(test = '[1] "x"')
  x_snap <- snap_to_md(x)
  x_lines <- strsplit(x_snap, "\n")[[1]]

  y <- snap_from_md(x_lines)
  expect_equal(x, y)
})

test_that("multiple tests can roundtrip", {
  x <- list(foo = c("a","b"), bar = "d", baz = letters[1:3])
  x_snap <- snap_to_md(x)
  x_lines <- strsplit(x_snap, "\n")[[1]]

  y <- snap_from_md(x_lines)
  expect_equal(x, y)
})

