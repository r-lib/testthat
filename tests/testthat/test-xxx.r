# Test that test_that succeeds or fails as expected.
test_test_that <- function(desc, expr, failure_expected = TRUE) {
  reporter <- SilentReporter$new()
  old_reporter <- set_reporter(reporter)
  test_that(desc, expr)
  set_reporter(old_reporter)
  test_that(desc, {
    if (failure_expected) {
      info <- 'Test succeeded when failure expected'
      expect_equal(length(reporter$failures), 1, info = info)
    } else {
      info <- sprintf(
          'Test failed unexpectedly: %s',
          as.character(reporter$failures[[desc]]))
      expect_equal(length(reporter$failures), 0, info = info)
    }
  })
}

context("Testing test_that")

test_test_that("false is false", {
  expect_that(FALSE, is_false())
}, failure_expected = FALSE)

test_test_that("false is not true", {
  expect_that(FALSE, is_true())
})

test_test_that("true is not false", {
  expect_that(TRUE, is_false())
})

test_test_that("1 equals 1", {
  expect_that(1, equals(1))
}, failure_expected = FALSE)

test_test_that("1 does not equal 2", {
  expect_that(1, equals(2))
})

test_test_that("fail fails", {
  fail()
})

test_test_that("succeed suceeds", {
  suceeds()
}, failure_expected = TRUE)

test_test_that("random errors are caught", {
  function_that_doesnt_exist()
})

f <- function() g()
g <- function() stop("I made a mistake", call. = FALSE)

test_test_that("errors are captured", {
  f()
})

test_test_that("errors when looking for warnings propagte", {
  f <- function() stop("!")
  expect_warning(f())
})

test_test_that("NULL doesn't match text", {
  expect_error(expect_match(NULL, 'oeu'), "NULL does not match")
})
