test_that("source_dir()", {
  dir <- test_path("test_dir")
  res <- source_dir(dir, pattern = "hello", chdir = TRUE, wrap = FALSE)
  expect_equal(res[[1]](), "Hello World")

  res <- source_dir(dir, pattern = "hello", chdir = FALSE, wrap = FALSE)
  expect_equal(res[[1]](), "Hello World")
})
