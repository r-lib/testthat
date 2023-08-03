
# srcrefs ----------------------------------------------------------

expectation_lines <- function(code) {
  srcref <- attr(substitute(code), "srcref")
  if (!is.list(srcref)) {
    stop("code doesn't have srcref", call. = FALSE)
  }

  results <- with_reporter("silent", code)$expectations()
  unlist(lapply(results, function(x) x$srcref[1])) - srcref[[1]][1]
}

test_that("line numbers captured in simple case", {
  lines <- expectation_lines({
                                 # line 1
    test_that("simple", {        # line 2
      expect_true(FALSE)         # line 3
    })                           # line 4
  })
  expect_equal(lines, 3)
})

test_that("line numbers captured inside another function", {
  lines <- expectation_lines({
    test_that("simple", {                    # line 1
      suppressMessages(expect_true(FALSE))   # line 2
    })
  })
  expect_equal(lines, 2)
})

test_that("line numbers captured inside a loop", {
  lines <- expectation_lines({
    test_that("simple", {               # line 1
      for (i in 1:4) expect_true(TRUE)  # line 2
    })
  })
  expect_equal(lines, rep(2, 4))
})

test_that("line numbers captured for skip()s", {
  lines <- expectation_lines({
    test_that("simple", {             # line 1
      skip("Not this time")           # line 2
    })                                # line 3
  })
  expect_equal(lines, 2)
})

test_that("line numbers captured for stop()s", {
  lines <- expectation_lines({
    test_that("simple", {             # line 1
      skip("Not this time")           # line 2
    })                                # line 3
  })
  expect_equal(lines, 2)
})
