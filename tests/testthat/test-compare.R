test_that("list comparison truncates to max_diffs", {
  x <- as.list(as.character(1:1e3))
  y <- lapply(x, paste0, ".")

  lines1 <- strsplit(compare(x, y)$message, "\n")[[1]]
  expect_length(lines1, 10)

  lines2 <- strsplit(compare(x, y, max_diffs = 99)$message, "\n")[[1]]
  expect_length(lines2, 100)
})

test_that("no diff", {
  expect_equal(compare(1,1), no_difference())
})

test_that("vector_equal_tol handles infinity", {
  expect_true(vector_equal_tol(Inf, Inf))
  expect_true(vector_equal_tol(-Inf, -Inf))
  expect_false(vector_equal_tol(Inf, -Inf))
  expect_false(vector_equal_tol(Inf, 0))
})

test_that("vector_equal_tol handles na", {
  expect_true(vector_equal_tol(NA, NA))
  expect_false(vector_equal_tol(NA, 0))
})
