context("Bare expectations")

expect_equal(2, 2)
expect_true(TRUE)
expect_error(stop("!"))

stopifnot(
  tryCatch(expect_true(TRUE),
           error = function(e) FALSE)
)
stopifnot(
  tryCatch(expect_true(FALSE),
           error = function(e) TRUE)
)
