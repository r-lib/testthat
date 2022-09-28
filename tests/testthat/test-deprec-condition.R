test_that("is_informative_error returns TRUE for basic errors", {
  withr::local_options(lifecycle_verbosity = "quiet")

  is_informative <- function(x) is_informative_error(catch_cnd(x))

  expect_false(is_informative(stop("!")))
  expect_false(is_informative(abort("!")))

  expect_false(is_informative(abort("!", class = "Rcpp::eval_error")))
  expect_false(is_informative(abort("!", class = "Rcpp::exception")))

  expect_true(is_informative(abort("!", class = "error_custom")))

  with_bindings(
    .env = global_env(),
    is_informative_error.error_custom = function(...) FALSE,
    expect_false(is_informative(abort("!", class = "error_custom")))
  )
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
