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

test_that("capture_warnings captures warnings", {
  out <- capture_warnings({
    warning("a")
    warning("b")
  })
  expect_equal(out, c("a", "b"))
})

test_that("capture_messages captures messages", {
  out <- capture_messages({
    message("a")
    message("b")
  })
  expect_equal(out, c("a\n", "b\n")) # message adds LF by default
})
