test_that("expectation contains failure message even when successful", {
  e <- expect(TRUE, "I failed")
  expect_equal(e$message, "I failed")
})

test_that("expect warns if no `failure_message`", {
  expect_warning(expect(TRUE), "missing, with no default")
})

test_that("info only evaluated on failure", {
  expect_error(expect(TRUE, "fail", info = stop("!")), NA)
})

test_that("can subclass expectation", {
  exp <- new_expectation("failure", "didn't work", .subclass = "foo", bar = "baz")
  expect_true(inherits_all(exp, c("foo", "expectation_failure", "expectation", "error", "condition")))
  expect_identical(attr(exp, "bar"), "baz")
})

test_that("`expect()` and `exp_signal()` signal expectations", {
  expect_error(expect(TRUE, ""), regexp = NA)
  expect_error(expect(FALSE, ""), class = "expectation_failure")

  expect_error(exp_signal(new_expectation("success", "")), regexp = NA)
  expect_error(exp_signal(new_expectation("failure", "")), class = "expectation_failure")
})

test_that("conditionMessage() is called during conversion", {
  local_bindings(
    conditionMessage.foobar = function(...) "dispatched",
    .env = global_env()
  )

  wrn <- warning_cnd("foobar", message = "wrong")
  expect_identical(as.expectation(wrn)$message, "dispatched")

  err <- error_cnd("foobar", message = "wrong")
  expect_match(as.expectation(err)$message, "Error: dispatched")

  err <- cnd(c("foobar", "skip"), message = "wrong")
  expect_identical(as.expectation(err)$message, "dispatched")
})

test_that("error message includes call", {
  f <- function() stop("Error!")
  cnd <- catch_cnd(f())
  expect_equal(format(as.expectation(cnd)), "Error in `f()`: Error!")
})
