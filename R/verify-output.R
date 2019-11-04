#' Verify output
#'
#' @description
#' This is a regression test that records interwoven code and output into a
#' file, similar to `.Rmd`. It's designed particularly for testing print
#' methods and error messages, where the primary goal is to ensure that the
#' output is helpful to a human. Obviously, there's no way to test that
#' automatically, so the best we can do is make the results explicit by saving
#' to a text file. This makes the results easy to see in code reviews, and
#' ensures that you don't change the output accidentally.
#'
#' `verify_output()` is designed to be used with git: to see what has changed
#' between from the previous run, you'll need to use `git diff` or similar.
#'
#' @section Syntax:
#' - Strings appear as R comments in the output.
#' - Strings starting with `# ` appear as headers in the output.
#'
#' @section CRAN:
#' On CRAN, `verify_output()` will not fail if the output changes. This is
#' beause tests of print methods and error messages are often fragile due to
#' implicit dependencies on other packages, and failure does not imply
#' incorrect computation, just a change in presentation.
#'
#' @section Differences to Rmd:
#' `verify_output()` can only capture the abstract syntax tree, losing all
#' whitespace and comments. To mildy offset this limitation, bare string
#' are turned into comments.
#'
#' @param path Path to record results. Typically this will be a call to
#'   [test_path()] so that the same path is used when the code is run
#'   interatviely and in a test.
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
#' verify_output(tempfile(), {
#'    sin(pi)
#'    2 * 3 == 4
#' })
#'
#' # Use strings to create comments in the output
#' verify_output(tempfile(), {
#'    "Trigonometry"
#'    sin(pi)
#'
#'    "Math"
#'    2 * 3 == 4
#' })
#'
#' # Use strings starting with # to create headings
#' verify_output(tempfile(), {
#'    "# Mathematical functions"
#'    sin(pi)
#'    2 * 3 == 4
#' })
verify_output <- function(path, code, width = 80, crayon = FALSE,
                          unicode = FALSE, env = caller_env()) {
  expr <- substitute(code)

  if (is_call(expr, "{")) {
    exprs <- as.list(expr[-1])
  } else {
    exprs <- list(expr)
  }

  withr::local_options(list(
    width = width,
    crayon.enabled = crayon,
    cli.unicode = unicode
  ))
  withr::local_envvar(list(RSTUDIO_CONSOLE_WIDTH = width))

  exprs <- lapply(exprs, function(x) if (is.character(x)) paste0("# ", x) else expr_deparse(x))
  source <- unlist(exprs, recursive = FALSE)

  results <- evaluate::evaluate(source, envir = env)
  output <- unlist(lapply(results, output_replay))

  if (!interactive()) {
    skip_on_cran()
  }
  compare_file(path, output, update = TRUE)
  invisible()
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
