context("source_dir")

test_that('source_dir()', {
  res <- source_dir('test_dir', pattern = 'hello', chdir = TRUE)
  expect_equal(res[[1]](), "Hello World")
  
  res <- source_dir(normalizePath('test_dir'), pattern = 'hello', chdir = TRUE)
  expect_equal(res[[1]](), "Hello World")

  res <- source_dir('test_dir', pattern = 'hello', chdir = FALSE)
  expect_equal(res[[1]](), "Hello World")   
    
  res <- source_dir(normalizePath('test_dir'), pattern = 'hello', chdir = FALSE)
  expect_equal(res[[1]](), "Hello World")
})
