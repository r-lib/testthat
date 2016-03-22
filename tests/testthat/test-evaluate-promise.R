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

test_that("capture_warnings captures warnings", {
  out <- capture_warnings({warning("a"); warning("b")})
  expect_equal(out, c("a", "b"))
})

test_that("capture_messages captures messages", {
  out <- capture_messages({message("a"); message("b")})
  expect_equal(out, c("a\n", "b\n")) # message adds LF by default
})

test_that("capture output captures output", {
  out1 <- capture_output(print(1:5))
  out2 <- capture_output(1:5, print = TRUE)

  expect_equal(out1, "[1] 1 2 3 4 5")
  expect_equal(out2, "[1] 1 2 3 4 5")
})

test_that("capture output doesn't print invisible things", {
  out <- capture_output(invisible(1), print = TRUE)
  expect_equal(out, "")
})
