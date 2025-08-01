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
  pass(NULL)
})

test_that("errors are captured", {
  f <- function() g()
  g <- function() stop("I made a mistake", call. = FALSE)

  reporter <- with_reporter("silent", {
    test_that("", {
      f()
    })
  })
  expect_equal(length(reporter$expectations()), 1)
})

test_that("errors captured even when looking for messages", {
  reporter <- with_reporter("silent", {
    test_that("", {
      expect_message(stop("a"))
    })
  })
  expect_equal(length(reporter$expectations()), 1)
  expect_true(expectation_error(reporter$expectations()[[1L]]))
})

test_that("errors captured even when looking for warnings", {
  reporter <- with_reporter("silent", {
    test_that("", {
      expect_warning(stop())
    })
  })
  expect_equal(length(reporter$expectations()), 1)
  expect_true(expectation_error(reporter$expectations()[[1L]]))
})

test_that("failures are errors", {
  f <- function() {
    expect_true(FALSE)
    expect_false(TRUE)
  }

  expect_error(f(), class = "expectation_failure")
})

test_that("infinite recursion is captured", {
  skip_on_covr()
  f <- function() f()

  reporter <- with_reporter("silent", {
    withr::with_options(
      list(expressions = sys.nframe() + 100),
      test_that("", {
        f()
      })
    )
  })
  expect_equal(length(reporter$expectations()), 1)
})

test_that("return value from test_that", {
  with_reporter(
    "",
    success <- test_that("success", {
      pass(NULL)
    })
  )
  expect_true(success)
  with_reporter(
    "",
    success <- test_that("success", {
      succeed("Yes!")
    })
  )
  expect_true(success)

  with_reporter(
    "",
    error <- test_that("error", {
      barf
    })
  )
  expect_false(error)

  with_reporter(
    "",
    failure <- test_that("failure", {
      expect_true(FALSE)
    })
  )
  expect_false(failure)
  with_reporter(
    "",
    failure <- test_that("failure", {
      fail()
    })
  )
  expect_false(failure)
  with_reporter(
    "",
    success <- test_that("failure", {
      fail()
    })
  )
  expect_false(success)

  with_reporter(
    "",
    skip <- test_that("skip", {
      skip("skipping")
    })
  )
  expect_false(skip)
  # No tests = automatically generated skip
  with_reporter("", skip <- test_that("success", {}))
  expect_false(skip)
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

test_that("missing packages cause a skip on CRAN", {
  local_on_cran(TRUE)
  # skip generated test_that, so need to wrap
  expect_skip(test_that("", {
    library(notinstalled)
  }))

  local_on_cran(FALSE)
  expect_error(
    test_that("", {
      library(notinstalled)
    }),
    class = "packageNotFoundError"
  )
})
