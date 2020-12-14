test_that("can't access variables from other tests (1)", {
  a <- 10
  expect_true(TRUE)
})
test_that("can't access variables from other tests (2)", {
  expect_false(exists("a"))
})

test_that("messages are suppressed", {
  local_edition(2)
  message("YOU SHOULDN'T SEE ME")
  succeed()
})

test_that("errors are captured", {
  f <- function() g()
  g <- function() stop("I made a mistake", call. = FALSE)

  reporter <- with_reporter("silent", {
    test_that("", { f() } )
  })
  expect_equal(length(reporter$expectations()), 1)
})

test_that("errors captured even when looking for messages", {
  reporter <- with_reporter("silent", {
    test_that("", { expect_message(stop("a")) } )
  })
  expect_equal(length(reporter$expectations()), 1)
  expect_true(expectation_error(reporter$expectations()[[1L]]))
})

test_that("errors captured even when looking for warnings", {
  reporter <- with_reporter("silent", {
    test_that("", { expect_warning(stop()) } )
  })
  expect_equal(length(reporter$expectations()), 1)
  expect_true(expectation_error(reporter$expectations()[[1L]]))
})

test_that("failures are errors", {
  f <- function() {
    expect_true(FALSE)
    expect_false(TRUE)
  }

  expect_error(f(), "is not TRUE", class = "expectation_failure")
})

test_that("infinite recursion is captured", {
  f <- function() f()

  reporter <- with_reporter("silent", {
    withr::with_options(
      list(expressions = sys.nframe() + 100),
      test_that("", { f() })
    )
  })
  expect_equal(length(reporter$expectations()), 1)
})

test_that("return value from test_that", {
  with_reporter("", success <- test_that("success", { succeed() } ))
  expect_true(success)
  with_reporter("", success <- test_that("success", { expect(TRUE, "Yes!") }))
  expect_true(success)

  with_reporter("", error <- test_that("error", { barf } ))
  expect_false(error)

  with_reporter("", failure <- test_that("failure", { expect_true(FALSE) } ))
  expect_false(failure)
  with_reporter("", failure <- test_that("failure", { fail() } ))
  expect_false(failure)
  with_reporter("", success <- test_that("failure", { expect(FALSE, "No!") } ))
  expect_false(success)

  with_reporter("", skip <- test_that("skip", { skip("skipping") } ))
  expect_false(skip)
  # No tests = automatically generated skip
  with_reporter("", skip <- test_that("success", {}))
  expect_false(skip)
})

# Line numbering ----------------------------------------------------------

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

test_that("can signal warnings and messages without restart", {
  expect_null(signalCondition(message_cnd("foo")))

  return("Skipping following test because it verbosely registers the warning")
  expect_null(signalCondition(warning_cnd("foo")))
})

test_that("braces required in testthat 3e", {
  local_edition(3)
  expect_warning(
    test_that("", expect_true(TRUE))
  )
})

test_that("no braces required in testthat 2e", {
  local_edition(2)
  expect_warning(
    test_that("", expect_true(TRUE)),
    NA
  )
})
