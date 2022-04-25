test_that("variants save different values", {
  expect_snapshot(r_version(), variant = r_version())
})

test_that("can snapshot output", {
  foo <- function() cat("y")
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
  expect_snapshot_output(foo())
})

test_that("can snapshot everything", {
  f <- function() {
    print("1")
    message("2")
    warning("3")
    stop("4")
  }
  expect_snapshot(f(), error = TRUE)
})

test_that("empty lines are preserved", {
  f <- function() {
    cat("1\n\n")
    message("2\n")
    warning("3\n")
    stop("4\n\n")
  }
  expect_snapshot(f(), error = TRUE)
})

test_that("multiple outputs of same type are collapsed", {
  expect_snapshot({
    x <- 1
    y <- 1
    {message("a"); message("b")}
    {warning("a"); warning("b")}
  })
})

test_that("can scrub output/messages/warnings/errors", {
  secret <- function() {
    print("secret")
    message("secret")
    warning("secret")
    stop("secret")
  }
  redact <- function(x) gsub("secret", "<redacted>", x)
  expect_snapshot(secret(), transform = redact, error = TRUE)

  # Or with an inline fun
  expect_snapshot(print("secret"), transform = ~ gsub("secret", "****", .x))
})

test_that("always checks error status", {
  expect_error(expect_snapshot(stop("!"), error = FALSE))
  expect_failure(expect_snapshot(print("!"), error = TRUE))
})

test_that("can capture error/warning messages", {
  expect_snapshot_error(stop("This is an error"))
  expect_snapshot_warning(warning("This is a warning"))
})

test_that("can check error/warning classes", {
  expect_snapshot(expect_snapshot_error(1), error = TRUE)
  expect_snapshot(expect_snapshot_error(1, class = "myerror"), error = TRUE)
  expect_snapshot(expect_snapshot_warning(1), error = TRUE)
  expect_snapshot(expect_snapshot_warning(1, class = "mywarning"), error = TRUE)
})

test_that("snapshot handles multi-line input", {
  expect_snapshot({
    1 + 2
    3 + 4
    "this is a comment"
  })
})

test_that("snapshot captures output if visible", {
  f_visible <- function() "x"
  f_invisible <- function() invisible("x")

  expect_snapshot(f_visible())
  expect_snapshot(f_invisible())
})

test_that("captures custom classes", {
  f <- function() {
    inform("Hello", class = "testthat_greeting")
    warn("Goodbye", class = "testthat_farewell")
    abort("Eeek!", class = "testthat_scream")
  }
  expect_snapshot(f(), error = TRUE)
})

test_that("even with multiple lines", {
  expect_snapshot_output(cat("a\nb\nc"))
  expect_snapshot_output(cat("a\nb\nc\n"))
})

test_that("can snapshot values", {
  x <- list("a", 1.5, 1L, TRUE)
  expect_snapshot_value(x, style = "json")
  expect_snapshot_value(x, style = "json2")
  expect_snapshot_value(x, style = "deparse")
  expect_snapshot_value(x, style = "serialize")
})

test_that("can control snapshot value details", {
  expect_snapshot_value(1.2, tolerance = 0.1)
})

test_that("tolerance passed to check_roundtrip", {
  expect_snapshot_value(0.900000000000001, style = "json")
})

test_that("reparse handles common cases", {
  roundtrip <- function(x) reparse(deparse(x))
  expect_equal(roundtrip(-1), -1)
  expect_equal(roundtrip(c(1, 2, 3)), c(1, 2, 3))
  expect_equal(roundtrip(list(1, 2, 3)), list(1, 2, 3))
  expect_equal(roundtrip(mtcars), mtcars)

  f <- function(x) x + 1
  expect_equal(roundtrip(f), f, ignore_function_env = TRUE)
})

test_that("`expect_snapshot()` does not inject", {
  expect_snapshot({
    x <- quote(!!foo)
    expect_equal(x, call("!", call("!", quote(foo))))
  })
})

test_that("full condition message is printed with rlang", {
  local_use_rlang_1_0()

  expect_snapshot(
    error = TRUE,
    variant = rlang_version(),
    {
      foo <- error_cnd("foo", message = "Title parent.")
      abort("Title.", parent = foo)
    }
  )
})

test_that("can print with and without condition classes", {
  local_use_rlang_1_0()

  f <- function() {
    message("foo")
    warning("bar")
    stop("baz")
  }
  expect_snapshot(
    error = TRUE,
    cnd_class = TRUE,
    variant = rlang_version(),
    f()
  )
  expect_snapshot(
    error = TRUE,
    cnd_class = FALSE,
    variant = rlang_version(),
    f()
  )
})

test_that("errors and warnings are folded", {
  local_use_rlang_1_0()

  f <- function() {
    warning("foo")
    stop("bar")
  }
  expect_snapshot(
    error = TRUE,
    variant = rlang_version(),
    f()
  )
})

test_that("hint is informative", {
  withr::local_options(cli.hyperlink = TRUE)

  expect_snapshot({
    cat(snapshot_accept_hint("_default", "bar.R"))
    cat(snapshot_accept_hint("foo", "bar.R"))
  })
})
