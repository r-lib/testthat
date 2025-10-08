#' Extract a reprex from an failed expectation
#'
#' `extract_test()` creates a minimal reprex for a failed expectation.
#' It extracts all non-test code before the failed expectation as well as
#' all code inside the test up to and including the failed expectation.
#'
#' @param location A string giving the location in the form
#'   `FILE:LINE[:COLUMN]`.
#' @param path Path to write the reprex to. Defaults to `stdout()`.
#' @export
extract_test <- function(location, path = stdout()) {
  check_string(location)

  pieces <- strsplit(location, ":")[[1]]
  if (!length(pieces) %in% c(2, 3)) {
    cli::cli_abort(
      "Expected {.arg location} to be of the form FILE:LINE[:COLUMN]"
    )
  }

  test_path <- test_path(pieces[[1]])
  line <- as.integer(pieces[2])

  lines <- extract_test_lines(test_path, line)
  base::writeLines(lines, con = path)
}

extract_test_lines <- function(path, line, error_call = caller_env()) {
  check_string(path)
  if (!file.exists(path)) {
    cli::cli_abort(
      "{.arg path} ({.path path}) does not exist.",
      call = error_call
    )
  }
  check_number_whole(line, min = 1, call = error_call)

  exprs <- parse(file = path, keep.source = TRUE)
  srcrefs <- attr(exprs, "srcref")

  # Focus on srcrefs before the selected line
  keep <- start_line(srcrefs) <= line
  exprs <- exprs[keep]
  srcrefs <- srcrefs[keep]

  # We first capture the prequel, all code outside of tests
  is_subtest <- map_lgl(exprs, is_subtest)
  if (any(!is_subtest)) {
    prequel <- c(
      comment_header("prequel"),
      map_chr(srcrefs[!is_subtest], as.character),
      ""
    )
  } else {
    prequel <- NULL
  }

  # Now we extract the contents of the test
  test_idx <- rev(which(is_subtest))[[1]]
  call <- exprs[[test_idx]]
  check_test_call(call, error_call = error_call)

  test_contents <- attr(call[[3]], "srcref")[-1] # drop `{`
  keep <- start_line(test_contents) <= line
  test <- map_chr(test_contents[keep], as.character)

  c(
    paste0("# Extracted from tests/testthat/", path, ":", line),
    prequel,
    comment_header("test"),
    test
  )
}

# Helpers ---------------------------------------------------------------------

check_test_call <- function(expr, error_call = caller_env()) {
  if (!is_call(expr, n = 2)) {
    cli::cli_abort(
      "test call has unexpected number of arguments",
      internal = TRUE,
      call = error_call
    )
  }
  if (!is_call(expr[[3]], "{")) {
    cli::cli_abort(
      "test call has use {",
      internal = TRUE,
      call = error_call
    )
  }
}

comment_header <- function(x) {
  paste0("# ", x, " ", strrep("-", 80 - nchar(x) - 3))
}

start_line <- function(srcrefs) {
  map_int(srcrefs, \(x) x[[1]])
}
