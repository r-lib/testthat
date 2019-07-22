#' Verify output
#'
#' This is a regression test records interwoven code and output into a file,
#' similar to Rmd. It's designed particularly for testing print methods and
#' error messages, where the primary goal is to ensure that the output is
#' helpful to a human. Obviously, there's no way to test that automatically,
#' so the best we can do is make the results explicit by saving to a text file.
#' This makes the presentation easier to see in code reviews, and avoids
#' changing it accidentally.
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
#' @param path Path to save file. Typically this will be a call to
#'   [test_path()] so that the same path when the code is run interactively.
#' @param code Code to execute.
#' @param width Width of console output
#' @param crayon Enable crayon package colouring?
#' @export
verify_output <- function(path, code, width = 80, crayon = FALSE) {
  code <- enquo(code)

  env <- get_env(code)
  expr <- get_expr(code)

  if (is_call(expr, "{")) {
    exprs <- as.list(expr[-1])
  } else {
    exprs <- list(expr)
  }

  withr::local_options(list(width = width, crayon.enabled = crayon))
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
  c(strsplit(x, "\n")[[1]], "")
}

#' @export
output_replay.source <- function(x) {
  lines <- strsplit(x$src, "\n")[[1]]
  n <- length(lines)

  lines[1] <- paste0("> ", lines[1])
  if (n > 1) {
    lines[2:n] <- paste0("+ ", lines[2:n])
  }

  lines
}

#' @export
output_replay.error <- function(x) {
  if (is.null(x$call)) {
    paste0("Error: ", x$message)
  } else {
    call <- deparse(x$call)
    paste0("Error in ", call, ": ", x$message)
  }
}

#' @export
output_replay.warning <- function(x) {
  if (is.null(x$call)) {
    paste0("Warning: ", x$message)
  } else {
    call <- deparse(x$call)
    paste0("Warning in ", call, ": ", x$message)
  }
}

#' @export
output_replay.message <- function(x) {
  # Messages are the only conditions where a new line is appended automatically
  paste0("Message: ", sub("\n$", "", x$message))
}

#' @export
output_replay.recordedplot <- function(x) {
  abort("Plots are not supported")
}
