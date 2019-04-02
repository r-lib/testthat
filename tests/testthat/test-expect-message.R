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
