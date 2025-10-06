expect_all_equal <- function(object, expected) {
  act <- quasi_label(enquo(object))
  exp <- quasi_label(enquo(expected))

  check_vector(act$val, error_arg = "object")
  if (length(act$val) == 0) {
    cli::cli_abort("{.arg object} must not be empty.")
  }

  check_vector(exp$val, error_arg = "expected")
  if (length(exp$val) != 1) {
    cli::cli_abort("{.arg expected} must be length 1.")
  }

  exp$val <- rep(exp$val, length(act$val))
  names(exp$val) <- names(act$val)
  expect_waldo_equal_("Expected every element of %s to equal %s.", act, exp)

  invisible(act$val)
}
