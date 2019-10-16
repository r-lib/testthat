# Messages ----------------------------------------------------------------

test_that("inputs evaluated in correct scope", {
  expect_message({
    message("a")
    x <- 10
  })
  expect_identical(x, 10)
})

test_that("regexp = NULL checks for presence of message", {
  expect_success(expect_message(message("!")))
  expect_failure(expect_message(null()), "did not produce any messages")
})

test_that("regexp = NA checks for absence of message", {
  expect_success(expect_message(null(), NA))
  expect_failure(expect_message(message("!"), NA))
})

test_that("regexp = string matches _any_ message", {
  f <- function() {
    message("a")
    message("b")
  }

  expect_success(expect_message(f()))
  expect_success(expect_message(f(), "a"))
  expect_success(expect_message(f(), "b"))
  expect_failure(expect_message(f(), "c"))
  expect_failure(expect_message("", "c"), "did not produce any messages")
})

test_that("... passed on to grepl", {
  expect_success(expect_message(message("X"), "x", ignore.case = TRUE))
})

test_that("returns first argument", {
  expect_equal(expect_message(1, NA), 1)
})


# Warnings ----------------------------------------------------------------

test_that("regexp = NULL checks for presence of warning", {
  expect_success(expect_warning(warning("!")))
  expect_failure(expect_warning(null()), "did not produce any warnings")
})

test_that("regexp = NA checks for absence of warning", {
  expect_success(expect_warning(null(), NA))
  expect_failure(expect_warning(warning("!"), NA))
})

test_that("regexp = string matches _any_ warning", {
  f <- function() {
    warning("a")
    warning("b")
  }

  expect_success(expect_warning(f()))
  expect_success(expect_warning(f(), "a"))
  expect_success(expect_warning(f(), "b"))
  expect_failure(expect_warning(f(), "c"))
  expect_failure(expect_warning("", "c"), "did not produce any warnings")
})

test_that("... passed on to grepl", {
  expect_success(expect_warning(warning("X"), "x", ignore.case = TRUE))
})

test_that("returns first argument", {
  expect_equal(expect_warning(1, NA), 1)
})

test_that("generates informative failures", {
  skip_if_not(l10n_info()$`UTF-8`)

  expect_known_failure("test-expect-messages-warning.txt", {
    foo <- function() {
      warning("xxx")
      warning("yyy")
    }

    expect_warning(null())
    expect_warning(foo(), NA)
    expect_warning(foo(), "zzz")
    expect_warning(foo(), "xxx", all = TRUE)
  })
})

