#' Extract a reprex from a failed expectation
#'
#' @description
#' `extract_test()` creates a minimal reprex for a failed expectation.
#' It extracts all non-test code before the failed expectation as well as
#' all code inside the test up to and including the failed expectation.
#'
#' This is particularly useful when you're debugging test failures in
#' someone else's package.
#'
#' @param location A string giving the location in the form
#'   `FILE:LINE[:COLUMN]`.
#' @param path Path to write the reprex to. Defaults to `stdout()`.
#' @param package If supplied, will be used to construct a test environment
#'   for the extracted code.
#' @return This function is called for its side effect of rendering a
#'   reprex to `path`. This function will never error: if extraction
#'   fails, the error message will be written to `path`.
#' @export
#' @examples
#' # If you see a test failure like this:
#' # ── Failure (test-extract.R:46:3): errors if can't find test ───────────────
#' # Expected FALSE to be TRUE.
#' # Differences:
#' # `actual`:   FALSE
#' # `expected`: TRUE
#'
#' # You can run this:
#' \dontrun{extract_test("test-extract.R:46:3")}
#' # to see just the code needed to reproduce the failure
extract_test <- function(
  location,
  path = stdout(),
  package = Sys.getenv("TESTTHAT_PKG")
) {
  check_string(location)
  check_string(package)

  pieces <- strsplit(location, ":")[[1]]
  if (!length(pieces) %in% c(2, 3)) {
    cli::cli_abort(c(
      "Expected {.arg location} to be of the form FILE:LINE[:COLUMN]",
      i = "Got {.arg location}: {.val {location}}"
    ))
  }

  test_path <- test_path(pieces[[1]])
  line <- as.integer(pieces[2])
  lines <- extract_test_(test_path, line, package)

  base::writeLines(lines, con = path)
}

#' Simulate a test environment
#'
#' This function is designed to allow you to simulate testthat's testing
#' environment in an interactive session. To undo it's affect, you
#' will need to restart your R session.
#'
#' @keywords internal
#' @param package Name of installed package.
#' @param path Path to `tests/testthat`.
#' @export
#' @rdname topic-name
simulate_test_env <- function(package, path) {
  check_string(package)
  check_string(path)

  env <- test_env(package)
  source_test_helpers(path, env = env)
  source_test_setup(path, env = env)

  invisible(env)
}

extract_test_ <- function(
  test_path,
  line,
  package = Sys.getenv("TESTTHAT_PKG")
) {
  source <- paste0("# Extracted from ", test_path, ":", line)
  exprs <- parse_file(test_path)

  lines <- tryCatch(
    extract_test_lines(exprs, line, package),
    error = function(cnd) {
      lines <- strsplit(conditionMessage(cnd), "\n")[[1]]
      lines <- c("", "Failed to extract test: ", lines)
      paste0("# ", lines)
    }
  )
  lines <- c(source, "", lines)
  lines
}

save_test <- function(srcref, dir, package = Sys.getenv("TESTTHAT_PKG")) {
  if (env_var_is_false("TESTTHAT_PROBLEMS")) {
    return()
  }

  test_path <- utils::getSrcFilename(srcref, full.names = TRUE)
  if (is.null(test_path) || !file.exists(test_path)) {
    return()
  }
  line <- srcref[[3]]
  extracted <- extract_test_(test_path, line, package)

  test_name <- tools::file_path_sans_ext(basename(test_path))
  dir_create(dir)
  problems_path <- file.path(dir, paste0(test_name, "-", line, ".R"))
  cat("Saving ", problems_path, "\n", sep = "")
  writeLines(extracted, problems_path)

  invisible(problems_path)
}

extract_test_lines <- function(
  exprs,
  line,
  package = "",
  error_call = caller_env()
) {
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
  lines <- c(header("test"), srcref_to_character(test_contents[keep]))

  # We first find the prequel, all non-test code before the test
  is_prequel <- !is_subtest & start_line(srcrefs) < line
  if (any(is_prequel)) {
    lines <- c(
      header("prequel"),
      srcref_to_character(srcrefs[is_prequel]),
      "",
      lines
    )
  }

  if (package != "") {
    lines <- c(
      header("setup"),
      "library(testthat)",
      sprintf(
        'test_env <- simulate_test_env(package = "%s", path = "..")',
        package
      ),
      "attach(test_env, warn.conflicts = FALSE)",
      "",
      lines
    )
  }
  lines
}

# Helpers ---------------------------------------------------------------------

parse_file <- function(path, error_call = caller_env()) {
  check_string(path, call = error_call)
  if (!file.exists(path)) {
    cli::cli_abort(
      "{.arg path} ({.path {path}}) does not exist.",
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

header <- function(x) {
  paste0("# ", x, " ", strrep("-", 80 - nchar(x) - 3))
}
