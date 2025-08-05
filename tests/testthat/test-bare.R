expect_equal(2, 2)
expect_true(TRUE)
expect_error(stop("!"))

stopifnot(
  tryCatch(
    expect_true(TRUE),
    expectation_failure = function(e) FALSE
  )
)
stopifnot(
  tryCatch(
    expect_true(FALSE),
    expectation_failure = function(e) TRUE
  )
)
