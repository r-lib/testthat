srcref_line <- function(code) {
  srcref <- attr(substitute(code), "srcref")
  if (!is.list(srcref)) {
    stop("code doesn't have srcref", call. = FALSE)
  }

  results <- with_reporter("silent", code)$expectations()
  unlist(lapply(results, function(x) x$srcref[1])) - srcref[[1]][1]
}

test_that("line numbers captured for expectations and warnings", {
  f <- function() warning("Uh oh")
  lines <- srcref_line({
    test_that("simple", {        # line 1
      expect_true(FALSE)         # line 2
      f()                        # line 3
    })
  })
  expect_equal(lines, c(2, 3))
})

test_that("line numbers captured when called indirectly", {
  lines <- srcref_line({
    test_that("simple", {                # line 1
      f <- function() g()                # line 2
      g <- function() h()                # line 3
      h <- function() expect_true(FALSE) # line 4
                                         # line 5
      h()                                # line 6
    })
  })
  expect_equal(lines, 4)

  lines <- srcref_line({
    f <- function() g()                  # line 1
    g <- function() h()                  # line 2
    h <- function() expect_true(FALSE)   # line 3
    test_that("simple", {                # line 4
      h()                                # line 5
    })
  })
  expect_equal(lines, 5)
})

test_that("line numbers captured inside a loop", {
  lines <- srcref_line({
    test_that("simple", {               # line 1
      for (i in 1:4) expect_true(TRUE)  # line 2
    })
  })
  expect_equal(lines, rep(2, 4))
})

test_that("line numbers captured for skip()s and stops()", {
  lines <- srcref_line({
    test_that("simple", {             # line 1
      skip("Not this time")           # line 2
    })                                # line 3
  })
  expect_equal(lines, 2)

  lines <- srcref_line({
    test_that("simple", {             # line 1
      stop("Not this time")           # line 2
    })                                # line 3
  })
  expect_equal(lines, 2)
})

test_that("line numbers captured for on.exit()", {
  lines <- srcref_line({
    test_that("simple", {             # line 1
      on.exit({stop("Error")})        # line 2
    })                                # line 3
  })
  expect_equal(lines, 2)

  # Falls back to test if no srcrf
  lines <- srcref_line({
    test_that("simple", {             # line 1
      on.exit(stop("Error"))          # line 2
    })                                # line 3
  })
  expect_equal(lines, 1)
})
