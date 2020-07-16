test_that("can record all types of output", {
  verify_output(test_path("test-verify-output.txt"), {
    "Output"
    1 + 2
    invisible(1:10)
    12345678 + 12345678 + 12345678 + 12345678 + 12345678 + 12345678 +
      12345678 + 12345678 + 12345678 + 12345678 + 12345678

    "# Header"
    "Other output"
    letters
  })
})

test_that("can record all types of output", {
  scoped_bindings(
    .env = global_env(),
    conditionMessage.foobar = function(cnd) {
      paste("Dispatched!", cnd$message)
    }
  )

  verify_output(test_path("test-verify-conditions.txt"), {
    message("Message")

    "With calls"
    warning("Warning")
    stop("Error")

    "Without calls"
    warning("Warning", call. = FALSE)
    stop("Error", call. = FALSE)

    "With `conditionMessage()` method"
    cnd_signal(message_cnd("foobar", message = "Message"))
    cnd_signal(warning_cnd("foobar", message = "Warning"))
    cnd_signal(error_cnd("foobar", message = "Error"))
  })
})

test_that("can't record plots", {
  skip_if(interactive())
  expect_error(verify_output(tempfile(), plot(1:10)), "Plots")
})

test_that("verify_output() splits condition messages on newlines", {
  verify_output(test_path("test-verify-conditions-lines.txt"), {
    message("First.\nSecond.")
    warning("First.\nSecond.")
    stop("First.\nSecond.")
  })
})

test_that("can use constructed calls in verify_output() (#945)", {
  verify_output(test_path("test-verify-constructed-calls.txt"), {
    expr(foo(!!c("bar", "baz")))

    # Can unquote local objects
    binding <- quote(foo)
    expr(foo(!!binding))
  })
})

test_that("verify_output() doesn't use cli unicode by default", {
  verify_output(
    test_path("test-verify-unicode-false.txt"),
    {
      cat(cli::symbol$info, cli::symbol$cross, "\n")
    }
  )

  local_reproducible_output(unicode = TRUE)
  verify_output(
    test_path("test-verify-unicode-true.txt"),
    unicode = TRUE,
    {
      cat(cli::symbol$info, cli::symbol$cross, "\n")
    })
})

test_that("verify_output() handles carriage return", {
  verify_output(test_path("test-verify-conditions-cr.txt"), {
    cat("\r\n")
  })
})
