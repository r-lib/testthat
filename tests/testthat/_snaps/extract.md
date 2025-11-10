# can include test env setup

    Code
      base::writeLines(extract_test_lines(exprs, 2, "test"))
    Output
      library(testthat)
      test_env <- test_that("test")
      source_test_helpers("..", env = test_env)
      attach(test_env)
      
      expect_true(TRUE)
      
      detach("test_env")

# can extract prequel

    Code
      base::writeLines(extract_test_lines(exprs, 4))
    Output
      # prequel ---------------------------------------------------------------
      x <- 1
      y <- 2
      
      # test ------------------------------------------------------------------
      expect_true(TRUE)

# preserves code format but not comments

    Code
      base::writeLines(extract_test_lines(exprs, 3))
    Output
      # prequel ---------------------------------------------------------------
      1 +   1
      
      # test ------------------------------------------------------------------
      2 +   2

# can extract selected expectation

    Code
      base::writeLines(extract_test_lines(exprs, 2))
    Output
      expect_true(TRUE)

