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

test_that("line-endings fixed before comparison", {
  x <- "a\n\rb"
  expect_snapshot(cat(x))
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

test_that("snapshot captures deprecations", {
  foo <- function() {
    lifecycle::deprecate_warn("1.0.0", "foo()")
  }

  expect_snapshot(foo())
  expect_snapshot_warning(foo())
  expect_snapshot_warning(foo(), class = "lifecycle_warning_deprecated")
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

test_that("`expect_snapshot()` does not inject", {
  expect_snapshot({
    x <- quote(!!foo)
    expect_equal(x, call("!", call("!", quote(foo))))
  })
})

test_that("full condition message is printed with rlang", {
  expect_snapshot(error = TRUE, {
    foo <- error_cnd("foo", message = "Title parent.")
    abort("Title.", parent = foo)
  })
})

test_that("can print with and without condition classes", {
  f <- function() {
    message("foo")
    warning("bar")
    stop("baz")
  }
  expect_snapshot(error = TRUE, cnd_class = TRUE, f())
  expect_snapshot(error = TRUE, cnd_class = FALSE, f())
})

test_that("errors and warnings are folded", {
  f <- function() {
    warning("foo")
    stop("bar")
  }
  expect_snapshot(error = TRUE, f())
})

# I don't know how to test this automatically; wrapping it in another
# snapshot doesn't capture the behaviour I expected, presumably due to the
# way that errors bubble up
# test_that("errors in snapshots behave like regular errors", {
#   f <- function() g()
#   g <- function() h()
#   h <- function() abort("!")
#
#   expect_snapshot(f())
#   expect_snapshot(1 + 1)
# })

test_that("hint is informative", {
  local_reproducible_output(crayon = TRUE, hyperlinks = TRUE, rstudio = TRUE)

  expect_snapshot({
    cat(snapshot_accept_hint("_default", "bar.R", reset_output = FALSE))
    cat(snapshot_accept_hint("foo", "bar.R", reset_output = FALSE))
  })
})

test_that("expect_snapshot requires a non-empty test label", {

  test_that("", {
    expect_error(expect_snapshot(1 + 1))
  })

})
