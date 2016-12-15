context("compare")

test_that("list comparison truncates to max_diffs", {
  x <- as.list(as.character(1:1e3))
  y <- lapply(x, paste0, ".")

  lines1 <- strsplit(compare(x, y)$message, "\n")[[1]]
  expect_length(lines1, 10)

  lines2 <- strsplit(compare(x, y, max_diffs = 99)$message, "\n")[[1]]
  expect_length(lines2, 100)
})
