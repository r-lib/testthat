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
source_file <- function(path,
                        env = test_env(),
                        chdir = TRUE,
                        desc = NULL,
                        wrap = TRUE,
                        error_call = caller_env()) {
  stopifnot(file.exists(path))
  stopifnot(is.environment(env))

  lines <- brio::read_lines(path)
  srcfile <- srcfilecopy(path, lines, file.info(path)[1, "mtime"], isFile = TRUE)

  ## We need to parse from a connection, because parse() has a bug,
  ## and converts the input to the native encoding, if the text arg is used
  con <- textConnection(lines, encoding = "UTF-8")
  on.exit(try(close(con), silent = TRUE), add = TRUE)
  exprs <- parse(con, n = -1, srcfile = srcfile, encoding = "UTF-8")
  exprs <- filter_desc(exprs, desc, error_call = error_call)

  n <- length(exprs)
  if (n == 0L) return(invisible())

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

filter_desc <- function(exprs, desc = NULL, error_call = caller_env()) {
  if (is.null(desc)) return(exprs)

  desc_levels <- strsplit(desc, "&&&", fixed = TRUE)[[1]]

  find_matching_expr <- function(current_exprs, remaining_levels) {
    match_count <- 0
    include <- logical(length(current_exprs))

    for (i in seq_along(current_exprs)) {
      current_expr <- current_exprs[[i]]

      if (is_call(current_expr, c("test_that", "describe", "it"), n = 2)) {
        expr_desc <- as.character(current_expr[[2]])

        if (expr_desc == remaining_levels[1]) {
          if (length(remaining_levels) == 1) {
            match_count <- match_count + 1
            include[i] <- TRUE
          } else if (is_call(current_expr, "describe", n = 2)) {
            body_of_expr <- as.list(current_expr[[3]])[-1]
            nested_result <- find_matching_expr(body_of_expr, remaining_levels[-1])

            if (nested_result$match_count > 0) {
              new_body <- as.call(c(quote(`{`), nested_result$current_exprs[nested_result$include]))
              current_expr[[3]] <- new_body
              current_exprs[[i]] <- current_expr
              match_count <- match_count + nested_result$match_count
              include[i] <- TRUE
            }
          }
        }
      } else if (match_count == 0 && !is_call(current_expr, c("test_that", "describe"))) {
        include[i] <- TRUE
      }
    }

    list(current_exprs = current_exprs, include = include, match_count = match_count)
  }

  result <- find_matching_expr(exprs, desc_levels)

  if (result$match_count == 0) {
    abort("Failed to find test with specified description", call = error_call)
  }
  if (result$match_count > 1) {
    abort("Found multiple tests with specified description", call = error_call)
  }

  result$current_exprs[result$include]
}

#' @rdname source_file
#' @export
source_dir <- function(path, pattern = "\\.[rR]$", env = test_env(),
                       chdir = TRUE, wrap = TRUE) {
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
