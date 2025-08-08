#' Source a file, directory of files, or various important subsets
#'
#' These are used by [test_dir()] and friends
#'
#' @param path Path to files.
#' @param pattern Regular expression used to filter files.
#' @param env Environment in which to evaluate code.
#' @param desc A character vector used to filter tests. This is used to
#'   (recursively) filter the content of the file, so that only the non-test
#'   code up to and including the match test is run.
#' @param chdir Change working directory to `dirname(path)`?
#' @param wrap Automatically wrap all code within [test_that()]? This ensures
#'   that all expectations are reported, even if outside a test block.
#' @export
#' @keywords internal
source_file <- function(
  path,
  env = test_env(),
  chdir = TRUE,
  desc = NULL,
  wrap = TRUE,
  error_call = caller_env()
) {
  check_string(path, call = error_call)
  if (!file.exists(path)) {
    cli::cli_abort("{.arg path} does not exist.", call = error_call)
  }
  if (!is.environment(env)) {
    stop_input_type(env, "an environment", call = error_call)
  }
  check_character(desc, allow_null = TRUE)

  lines <- brio::read_lines(path)
  srcfile <- srcfilecopy(
    path,
    lines,
    file.info(path)[1, "mtime"],
    isFile = TRUE
  )

  ## We need to parse from a connection, because parse() has a bug,
  ## and converts the input to the native encoding, if the text arg is used
  con <- textConnection(lines, encoding = "UTF-8")
  withr::defer(try(close(con), silent = TRUE))
  exprs <- parse(con, n = -1, srcfile = srcfile, encoding = "UTF-8")
  exprs <- filter_desc(exprs, desc, error_call = error_call)

  n <- length(exprs)
  if (n == 0L) {
    return(invisible())
  }

  if (chdir) {
    old_dir <- setwd(dirname(path))
    withr::defer(setwd(old_dir))
  }

  withr::local_options(testthat_topenv = env, testthat_path = path)
  if (wrap) {
    invisible(test_code(
      code = exprs,
      env = env,
      reporter = get_reporter() %||% StopReporter$new()
    ))
  } else {
    withCallingHandlers(
      invisible(eval(exprs, env)),
      error = function(err) {
        cli::cli_abort(
          "Failed to evaluate {.path {path}}.",
          parent = err,
          call = error_call
        )
      }
    )
  }
}

filter_desc <- function(exprs, descs, error_call = caller_env()) {
  if (length(descs) == 0) {
    return(exprs)
  }
  desc <- descs[[1]]

  subtest_idx <- which(unname(map_lgl(exprs, is_subtest)))

  matching_idx <- keep(subtest_idx, \(idx) exprs[[idx]][[2]] == desc)
  if (length(matching_idx) == 0) {
    cli::cli_abort(
      "Failed to find test with description {.str {desc}}.",
      call = error_call
    )
  } else if (length(matching_idx) > 1) {
    cli::cli_abort(
      "Found multiple tests with description {.str {desc}}.",
      call = error_call
    )
  }

  # Want all code up to and including the matching test, except for subtests
  keep_idx <- setdiff(seq2(1, matching_idx), setdiff(subtest_idx, matching_idx))
  # Recursively inspect the components of the subtest
  exprs[[matching_idx]][[3]] <- filter_desc(
    exprs[[matching_idx]][[3]],
    descs[-1],
    error_call = error_call
  )
  exprs[keep_idx]
}

is_subtest <- function(expr) {
  is_call(expr, c("test_that", "describe", "it"), n = 2) && is_string(expr[[2]])
}

#' @rdname source_file
#' @export
source_dir <- function(
  path,
  pattern = "\\.[rR]$",
  env = test_env(),
  chdir = TRUE,
  wrap = TRUE
) {
  files <- sort(dir(path, pattern, full.names = TRUE))

  error_call <- current_env()
  lapply(files, function(path) {
    source_file(
      path,
      env = env,
      chdir = chdir,
      wrap = wrap,
      error_call = error_call
    )
  })
}

#' @rdname source_file
#' @export
source_test_helpers <- function(path = "tests/testthat", env = test_env()) {
  source_dir(path, "^helper.*\\.[rR]$", env = env, wrap = FALSE)
}

#' @rdname source_file
#' @export
source_test_setup <- function(path = "tests/testthat", env = test_env()) {
  source_dir(path, "^setup.*\\.[rR]$", env = env, wrap = FALSE)
}

#' @rdname source_file
#' @export
source_test_teardown <- function(path = "tests/testthat", env = test_env()) {
  source_dir(path, "^teardown.*\\.[rR]$", env = env, wrap = FALSE)
}
