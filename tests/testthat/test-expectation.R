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
