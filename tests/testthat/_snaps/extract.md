# can extract test from file

    Code
      base::writeLines(readLines(out_path))
    Output
      # Extracted from extract/simple.R:3
      
      # setup ------------------------------------------------------------------------
      library(testthat)
      test_env <- simulate_test_env(package = "testthat", path = "..")
      attach(test_env, warn.conflicts = FALSE)
      
      # test -------------------------------------------------------------------------
      expect_true(TRUE)

# can include test env setup

    Code
      base::writeLines(extract_test_lines(exprs, 2, "test"))
    Output
      # setup ------------------------------------------------------------------------
      library(testthat)
      test_env <- simulate_test_env(package = "test", path = "..")
      attach(test_env, warn.conflicts = FALSE)
      
      # test -------------------------------------------------------------------------
      expect_true(TRUE)

# can extract prequel

    Code
      base::writeLines(extract_test_lines(exprs, 4))
    Output
      # prequel ----------------------------------------------------------------------
      x <- 1
      y <- 2
      
      # test -------------------------------------------------------------------------
      expect_true(TRUE)

# preserves code format but not comments

    Code
      base::writeLines(extract_test_lines(exprs, 3))
    Output
      # prequel ----------------------------------------------------------------------
      1 +   1
      
      # test -------------------------------------------------------------------------
      2 +   2

# can extract selected expectation

    Code
      base::writeLines(extract_test_lines(exprs, 2))
    Output
      # test -------------------------------------------------------------------------
      expect_true(TRUE)

