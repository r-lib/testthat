#' Verify output
#'
#' @description
#' This is a regression test that records interwoven code and output into a
#' file, in a similar way to knitting an `.Rmd` file (but see caveats below).
#'
#' `verify_output()` is designed particularly for testing print methods and error
#' messages, where the primary goal is to ensure that the output is helpful to
#' a human. Obviously, you can't test that with code, so the best you can do is
#' make the results explicit by saving them to a text file. This makes the output
#' easy to verify in code reviews, and ensures that you don't change the output
#' by accident.
#'
#' `verify_output()` is designed to be used with git: to see what has changed
#' from the previous run, you'll need to use `git diff` or similar.
#'
#' @section Syntax:
#' `verify_output()` can only capture the abstract syntax tree, losing all
#' whitespace and comments. To mildly offset this limitation:
#'
#' - Strings are converted to R comments in the output.
#' - Strings starting with `# ` are converted to headers in the output.
#'
#' @section CRAN:
#' On CRAN, `verify_output()` will never fail, even if the output changes.
#' This avoids false positives because tests of print methods and error
#' messages are often fragile due to implicit dependencies on other packages,
#' and failure does not imply incorrect computation, just a change in
#' presentation.
#'
#' @param path Path to record results.
#'
#'   This should usually be a call to [test_path()] in order to ensure that
#'   the same path is used when run interactively (when the working directory
#'   is typically the project root), and when run as an automated test (when
#'   the working directory will be `tests/testthat`).
#' @param code Code to execute. This will usually be a multiline expression
#'   contained within `{}` (similarly to `test_that()` calls).
#' @param width Width of console output
#' @param crayon Enable crayon package colouring?
#' @param unicode Enable cli package UTF-8 symbols? If you set this to
#'   `TRUE`, call `skip_if(!cli::is_utf8_output())` to disable the
#'   test on your CI platforms that don't support UTF-8 (e.g. Windows).
#' @param env The environment to evaluate `code` in.
#' @export
#' @examples
#' # The first argument would usually be `test_path("informative-name.txt"`)
#' # but that is not permitted in examples
#' path <- tempfile()
#' verify_output(path, {
#'    head(mtcars)
#'    log(-10)
#'    "a" * 3
#' })
#' writeLines(readLines(path))
#'
#' # Use strings to create comments in the output
#' verify_output(tempfile(), {
#'    "Print method"
#'    head(mtcars)
#'
#'    "Warning"
#'    log(-10)
#'
#'    "Error"
#'    "a" * 3
#' })
#'
#' # Use strings starting with # to create headings
#' verify_output(tempfile(), {
#'    "# Base functions"
#'    head(mtcars)
#'    log(-10)
#'    "a" * 3
#' })
verify_output <- function(path, code, width = 80, crayon = FALSE,
                          unicode = FALSE, env = caller_env()) {

  local_reproducible_output(width = width, crayon = crayon, unicode = unicode)

  expr <- substitute(code)
  output <- verify_exec(expr, env = env)

  if (!interactive() && on_cran()) {
    skip("On CRAN")
  }
  compare_file(path, output, update = TRUE)
  invisible()
}

verify_exec <- function(expr, env = caller_env(), replay = output_replay) {

  if (is_call(expr, "{")) {
    exprs <- as.list(expr[-1])
  } else {
    exprs <- list(expr)
  }

  withr::local_pdf(tempfile())
  grDevices::dev.control(displaylist = "enable")

  exprs <- lapply(exprs, function(x) if (is.character(x)) paste0("# ", x) else expr_deparse(x))
  source <- unlist(exprs, recursive = FALSE)

  handler <- evaluate::new_output_handler(value = testthat_print)
  results <- evaluate::evaluate(source, envir = env,
    new_device = FALSE,
    output_handler = handler
  )
  output <- unlist(lapply(results, replay))
  output <- gsub("\r", "", output, fixed = TRUE)
  output
}

output_replay <- function(x) {
  UseMethod("output_replay", x)
}

#' @export
output_replay.character <- function(x) {
  c(split_lines(x), "")
}

#' @export
output_replay.source <- function(x) {
  lines <- split_lines(x$src)

  # Remove header of lines so they don't get prefixed
  first <- lines[[1]]
  if (grepl("^# # ", first)) {
    header <- gsub("^# # ", "", first)
    lines <- lines[-1]
  } else {
    header <- NULL
  }

  n <- length(lines)
  if (n > 0) {
    lines[1] <- paste0("> ", lines[1])
    if (n > 1) {
      lines[2:n] <- paste0("+ ", lines[2:n])
    }
  }

  if (!is.null(header)) {
    underline <- strrep("=", nchar(header))
    lines <- c("", header, underline, "", lines)
  }

  lines
}

#' @export
output_replay.error <- function(x) {
  msg <- cnd_message(x)
  if (is.null(x$call)) {
    msg <- paste0("Error: ", msg)
  } else {
    call <- deparse(x$call)
    msg <- paste0("Error in ", call, ": ", msg)
  }
  c(split_lines(msg), "")
}

#' @export
output_replay.warning <- function(x) {
  msg <- cnd_message(x)
  if (is.null(x$call)) {
    msg <- paste0("Warning: ", msg)
  } else {
    call <- deparse(x$call)
    msg <- paste0("Warning in ", call, ": ", msg)
  }
  c(split_lines(msg), "")
}

#' @export
output_replay.message <- function(x) {
  # Messages are the only conditions where a new line is appended automatically
  msg <- paste0("Message: ", sub("\n$", "", cnd_message(x)))
  c(split_lines(msg), "")
}

#' @export
output_replay.recordedplot <- function(x) {
  abort("Plots are not supported")
}


# Helpers ------------------------------------------------------------

split_lines <- function(x) {
  strsplit(x, "\n")[[1]]
}
