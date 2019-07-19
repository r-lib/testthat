test_that("can record all types of output", {
  verify_output(test_path("test-verify-output.txt"), {
    "Output"
    1 + 2
    invisible(1:10)
    12345678 + 12345678 + 12345678 + 12345678 + 12345678 + 12345678 +
      12345678 + 12345678 + 12345678 + 12345678 + 12345678
  })
})

test_that("can record all types of output", {
  verify_output(test_path("test-verify-conditions.txt"), {
    message("Message")

    "With calls"
    warning("Warning")
    stop("Error")

    "Without calls"
    warning("Warning", call. = FALSE)
    stop("Error", call. = FALSE)
  })
})

test_that("can't record plots", {
  skip_if(interactive())
  expect_error(verify_output("path", plot(1:10)), "Plots")
})
