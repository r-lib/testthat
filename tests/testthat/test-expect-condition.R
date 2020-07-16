test_that("returns condition or value", {
  expect_equal(expect_error(1, NA), 1)
  expect_s3_class(expect_error(stop("!")), "simpleError")
})

test_that("regexp = NULL checks for presence of error", {
  expect_success(expect_error(stop()))
  expect_snapshot_failure(expect_error(null()))
})

test_that("regexp = NA checks for absence of error", {
  expect_success(expect_error(null(), NA))
  expect_failure(expect_error(stop("Yes"), NA))
})

test_that("regexp = string matches for error message", {
  expect_success(expect_error(stop("Yes"), "Yes"))
  expect_error(expect_error(stop("Yes"), "No"))
  expect_snapshot_failure(expect_error("OK", "No"))
})

test_that("class = string matches class of error", {
  blah <- function() {
    abort("hi", class = c("blah", "error", "condition"))
  }

  expect_success(expect_error(blah(), class = "blah"))
  expect_error(expect_error(blah(), class = "blech"), class = "blah")
})

test_that("check type of class and pattern", {
  expect_error(expect_error(stop("!"), regexp = 1), "single string")
  expect_error(expect_error(stop("!"), class = 1), "single string")
})

test_that("... passed on to grepl", {
  expect_success(expect_error(stop("X"), "x", ignore.case = TRUE))
})

test_that("message method is called when expecting error", {
  local_bindings(
    conditionMessage.foobar = function(err) "dispatched!",
    .env = globalenv()
  )
  fb <- function() abort("foobar", "foobar")

  expect_error(fb(), "dispatched!", class = "foobar")
  expect_snapshot_failure(expect_error(fb(), NA))
})

test_that("rlang backtrace reminders are not included in error message", {
  f <- function() g()
  g <- function() h()
  h <- function() abort("foo")
  expect_error(f(), "foo$")
})

test_that("can capture Throwable conditions from rJava", {
  local_bindings(
    conditionMessage.Throwable = function(c, ...) unclass(c)$message,
    conditionCall.Throwable = function(c, ...) unclass(c)$call,
    `$.Throwable` = function(...) stop("forbidden"),
    `$<-.Throwable` = function(...) stop("forbidden"),
    .env = globalenv()
  )

  throw <- function(msg) stop(error_cnd("Throwable", message = msg))
  expect_error(throw("foo"), "foo", class = "Throwable")
})

# expect_warning() ----------------------------------------------------------

test_that("warnings are converted to errors when options('warn') >= 2", {
  withr::with_options(c(warn = 2), {
    expect_warning(warning("foo"))
    expect_error(warning("foo"))
  })
})

test_that("can silence warnings", {
  expect_warning(suppressWarnings(warning("foo")), NA)

  # Can't test with `expect_warning()` because the warning is still
  # signalled, it's just not printed
  # https://github.com/wch/r-source/blob/886ab4a0/src/main/errors.c#L388-L484
  withr::with_options(c(warn = -1), warning("foo"))
})

# expect_message ----------------------------------------------------------

test_that("regexp = NA checks for absence of message", {
  expect_success(expect_message(null(), NA))
  expect_failure(expect_message(message("!"), NA))
})

# expect_condition --------------------------------------------------------

test_that("continues evaluation", {
  expect_condition({
    message("Hi")
    new_variable <- 1
  })
  expect_equal(exists("new_variable"), TRUE)
})

test_that("but not after error", {
  expect_condition({
    stop("Hi")
    new_variable <- 1
  })
  expect_equal(exists("new_variable"), FALSE)
})

test_that("captured condition is muffled", {
  expect_message(expect_condition(message("Hi")), NA)
  expect_warning(expect_condition(warning("Hi")), NA)
  expect_error(expect_condition(stop("Hi")), NA)
})

test_that("only matching condition is captured, others bubble up", {
  f1 <- function() {
    message("Hi")
    message("Bye")
  }
  expect_condition(expect_condition(f1(), "Hi"), "Bye")
  expect_condition(expect_condition(f1(), "Bye"), "Hi")

  f2 <- function() {
    message("Hi")
    stop("Bye")
  }
  expect_error(expect_condition(f2(), "Hi"), "Bye")
})
