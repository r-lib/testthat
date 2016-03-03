context("evaluate promise")


test_that("captures warnings, messages and output", {
  out <- evaluate_promise({
    message("m", appendLF = FALSE)
    warning("w")
    cat("out")
  })

  expect_equal(out$output, "out")
  expect_equal(out$messages, "m")
  expect_equal(out$warnings, "w")
})

test_that("messages can optionally propagate", {
  f <- function() { warning("w"); message("m")}

  expect_message(out <- evaluate_promise(f(), capture_messages = FALSE), "m")
  expect_equal(out$messages, character())
  expect_equal(out$warnings, "w")
})

test_that("warnings can optionally propagate", {
  f <- function() { warning("w"); message("m")}

  expect_warning(out <- evaluate_promise(f(), capture_warnings = FALSE), "w")
  expect_equal(out$messages, "m\n")
  expect_equal(out$warnings, character())
})
