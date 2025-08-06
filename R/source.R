#' Source a file, directory of files, or various important subsets
#'
#' These are used by [test_dir()] and friends
#'
#' @param path Path to files.
#' @param pattern Regular expression used to filter files.
#' @param env Environment in which to evaluate code.
#' @param desc If not-`NULL`, will run only test with this `desc`ription.
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
  stopifnot(file.exists(path))
  stopifnot(is.environment(env))
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
  on.exit(try(close(con), silent = TRUE), add = TRUE)
  exprs <- parse(con, n = -1, srcfile = srcfile, encoding = "UTF-8")
  exprs <- filter_subtests(exprs, desc, error_call = error_call)

  n <- length(exprs)
  if (n == 0L) {
    return(invisible())
  }

  if (chdir) {
    old_dir <- setwd(dirname(path))
    on.exit(setwd(old_dir), add = TRUE)
  }

  withr::local_options(testthat_topenv = env, testthat_path = path)
  if (wrap) {
    invisible(test_code(
      test = NULL,
      code = exprs,
      env = env,
      reporter = get_reporter() %||% StopReporter$new()
    ))
  } else {
    withCallingHandlers(
      invisible(eval(exprs, env)),
      error = function(err) {
        abort(
          paste0("In path: ", encodeString(path, quote = '"')),
          parent = err,
          call = error_call
        )
      }
    )
  }
}

filter_subtests <- function(exprs, descs, error_call = caller_env()) {
  if (length(descs) == 0) {
    return(exprs)
  }

  is_subtest <- unname(map_lgl(exprs, is_subtest))

  subtest_idx <- which(is_subtest)
  code_idx <- which(!is_subtest)
  matching_idx <- keep(subtest_idx, \(idx) {
    exprs[[idx]][[2]] == descs[[1]]
  })

  if (length(matching_idx) == 0) {
    cli::cli_abort(
      "Failed to find test with specified description",
      call = error_call
    )
  } else if (length(matching_idx) > 1) {
    cli::cli_abort(
      "Found multiple tests with specified description",
      call = error_call
    )
  }

  keep_idx <- intersect(seq_along(exprs), c(matching_idx, code_idx))
  exprs[[matching_idx]] <- filter_subtests(
    exprs[[matching_idx]],
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
  files <- normalizePath(sort(dir(path, pattern, full.names = TRUE)))
  lapply(files, function(path) {
    source_file(path, env = env, chdir = chdir, wrap = wrap)
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
