#' Extract a reprex from a failed expectation
#'
#' `extract_test()` creates a minimal reprex for a failed expectation.
#' It extracts all non-test code before the failed expectation as well as
#' all code inside the test up to and including the failed expectation.
#'
#' @param location A string giving the location in the form
#'   `FILE:LINE[:COLUMN]`.
#' @param path Path to write the reprex to. Defaults to `stdout()`.
#' @return This function is called for its side effect of rendering a
#'   reprex to `path`. This function will never error: if extraction
#'   fails, the error message will be written to `path`.
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
  source <- paste0("# Extracted from ", test_path, ":", line)
  exprs <- parse_file(test_path)

  lines <- tryCatch(
    extract_test_lines(exprs, line),
    error = function(cnd) {
      lines <- strsplit(conditionMessage(cnd), "\n")[[1]]
      lines <- c("", "Failed to extract test: ", lines)
      paste0("# ", lines)
    }
  )
  lines <- c(source, lines)

  base::writeLines(lines, con = path)
}

extract_test_lines <- function(exprs, line, error_call = caller_env()) {
  check_number_whole(line, min = 1, call = error_call)

  srcrefs <- attr(exprs, "srcref")
  is_subtest <- map_lgl(exprs, is_subtest)

  # First we find the test
  is_test <- is_subtest &
    start_line(srcrefs) <= line &
    end_line(srcrefs) >= line
  if (!any(is_test)) {
    cli::cli_abort("Failed to find test at line {line}.", call = error_call)
  }
  call <- exprs[[which(is_test)[[1]]]]
  test_contents <- attr(call[[3]], "srcref")[-1] # drop `{`
  keep <- start_line(test_contents) <= line
  test <- srcref_to_character(test_contents[keep])

  # We first find the prequel, all non-test code before the test
  is_prequel <- !is_subtest & start_line(srcrefs) < line
  if (!any(is_prequel)) {
    return(test)
  }

  c(
    "# prequel ---------------------------------------------------------------",
    srcref_to_character(srcrefs[is_prequel]),
    "",
    "# test ------------------------------------------------------------------",
    test
  )
}

# Helpers ---------------------------------------------------------------------

parse_file <- function(path, error_call = caller_env()) {
  check_string(path, call = error_call)
  if (!file.exists(path)) {
    cli::cli_abort(
      "{.arg path} ({.path path}) does not exist.",
      call = error_call
    )
  }
  parse(path, keep.source = TRUE)
}

parse_text <- function(text) {
  text <- sub("^\n", "", text)
  indent <- regmatches(text, regexpr("^ *", text))
  text <- gsub(paste0("(?m)^", indent), "", text, perl = TRUE)

  parse(text = text, keep.source = TRUE)
}

srcref_to_character <- function(x) {
  unlist(map(x, as.character))
}
start_line <- function(srcrefs) {
  map_int(srcrefs, \(x) x[[1]])
}
end_line <- function(srcrefs) {
  map_int(srcrefs, \(x) x[[3]])
}
