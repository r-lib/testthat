test_that("regexp = NULL checks for presence of error", {
  expect_success(expect_error(stop()))
  expect_failure(expect_error(null()), "did not throw an error")
})

test_that("regexp = NA checks for absence of error", {
  expect_success(expect_error(null(), NA))
  expect_failure(expect_error(stop("Yes"), NA))
})

test_that("regexp = string matches for error message", {
  expect_success(expect_error(stop("Yes"), "Yes"))
  expect_failure(expect_error(stop("Yes"), "No"))
  expect_failure(expect_error("OK", "No"), "did not throw an error")
})

test_that("classed error generates useful warning", {
  custom_err <- function() abort("This is an error", .subclass = "custom_err")
  verify_output(test_path("test-expect-condition-custom.txt"), {
    expect_error(custom_err(), "an error")
  })
})

test_that("class = string matches class of error", {
  blah <- function() {
    cond <- structure(
      list(message = "hi"),
      class = c("blah", "error", "condition")
    )
    stop(cond)
  }

  expect_success(expect_error(blah(), class = "blah"))
  expect_failure(
    expect_error(blah(), class = "blech"),
    "threw an error with unexpected class"
  )
  expect_failure(
    expect_condition(blah(), class = "blech"),
    "threw an condition with unexpected class"
  )
})

test_that("... passed on to grepl", {
  expect_success(expect_error(stop("X"), "x", ignore.case = TRUE))
})

test_that("generates informative failures", {
  skip_if_not(l10n_info()$`UTF-8`)

  # rlang backtraces are sensitive to upstream changes
  skip_on_cran()

  # Disable srcrefs because they differ across systems
  withr::local_options(list(rlang_trace_format_srcrefs = FALSE))

  expect_known_failure("test-expect-condition.txt", {
    # Call `stop()` indirectly to create more realistic backtraces in
    # captured output
    fail <- function(msg) stop(msg)

    expect_error(null())
    expect_error(fail("!"), NA)

    expect_error(fail("xxx"), regexp = "zzz")
    expect_error(fail("xxx"), class = "zzz")
    expect_error(fail("xxx"), regexp = "zzz", class = "zzz")
  })
})

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

local({
  # Define method in the global environment so it's consistently reached
  scoped_bindings(
    conditionMessage.foobar = function(err) "dispatched!",
    .env = global_env()
  )
  foobar <- error_cnd("foobar")

  test_that("message method is called when expecting error", {
    expect_error(stop(foobar), "dispatched!", class = "foobar")
  })

  test_that("message method is called with unexpected message", {
    expect_error(
      expect_error(stop(foobar), "unexpected", class = "foobar"),
      "Actual message: \"dispatched!\"",
      fixed = TRUE,
      class = "expectation_failure"
    )
  })

  test_that("message method is called with unexpected error", {
    expect_error(
      expect_error(stop(foobar), NA, class = "foobar"),
      "dispatched!",
      class = "expectation_failure"
    )
  })

  test_that("message method is called with expected warnings", {
    foobar <- warning_cnd("foobar")
    expect_warning(warning(foobar), "dispatched!")
  })

  test_that("message method is called with expected messages", {
    foobar <- message_cnd("foobar")
    expect_message(message(foobar), "dispatched!")
  })
})

test_that("rlang backtrace reminders are not included in error message", {
  f <- function() g()
  g <- function() h()
  h <- function() abort("foo")
  expect_error(f(), "foo$")
})


test_that("is_informative_error returns TRUE for basic errors", {
  is_informative <- function(x) is_informative_error(catch_cnd(x))

  expect_false(is_informative(stop("!")))
  expect_false(is_informative(abort("!")))

  expect_false(is_informative(abort("!", .subclass = "Rcpp::eval_error")))
  expect_false(is_informative(abort("!", .subclass = "Rcpp::exception")))

  expect_true(is_informative(abort("!", .subclass = "error_custom")))

  with_bindings(
    .env = global_env(),
    is_informative_error.error_custom = function(...) FALSE,
    expect_false(is_informative(abort("!", .subclass = "error_custom")))
  )
})

test_that("can capture Throwable conditions from rJava", {
  local_Throwable_methods()
  throw <- function(msg) stop(error_cnd("Throwable", message = msg))
  expect_error(throw("foo"), "foo", class = "Throwable")
})
