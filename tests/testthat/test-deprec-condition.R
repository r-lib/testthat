test_that("is_informative_error is defunct", {
  expect_snapshot(is_informative_error(TRUE), error = TRUE)
})

test_that("capture_warnings can ignore deprecation warnings", {
  foo <- function() {
    lifecycle::deprecate_warn("1.0.0", "foo()")
  }
  expect_warning(
    expect_equal(capture_warnings(foo(), TRUE), character()),
    class = "lifecycle_warning_deprecated"
  )
})
