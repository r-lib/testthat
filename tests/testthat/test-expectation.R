context("test-expectation")

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
