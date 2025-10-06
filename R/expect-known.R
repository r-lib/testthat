#' Do you expect the results/output to equal a known value?
#'
#' For complex printed output and objects, it is often challenging to describe
#' exactly what you expect to see. `expect_known_value()` and
#' `expect_known_output()` provide a slightly weaker guarantee, simply
#' asserting that the values have not changed since the last time that you ran
#' them.
#'
#' These expectations should be used in conjunction with git, as otherwise
#' there is no way to revert to previous values. Git is particularly useful
#' in conjunction with `expect_known_output()` as the diffs will show you
#' exactly what has changed.
#'
#' Note that known values updates will only be updated when running tests
#' interactively. `R CMD check` clones the package source so any changes to
#' the reference files will occur in a temporary directory, and will not be
#' synchronised back to the source package.
#'
#' @section 3rd edition:
#' `r lifecycle::badge("deprecated")`
#'
#' `expect_known_output()` and friends are deprecated in the 3rd edition;
#' please use [expect_snapshot_output()] and friends instead.
#'
#' @export
#' @param file File path where known value/output will be stored.
#' @param update Should the file be updated? Defaults to `TRUE`, with
#'   the expectation that you'll notice changes because of the first failure,
#'   and then see the modified files in git.
#' @param version The serialization format version to use. The default, 2, was
#'   the default format from R 1.4.0 to 3.5.3. Version 3 became the default from
#'   R 3.6.0 and can only be read by R versions 3.5.0 and higher.
#' @param ... Passed on to [waldo::compare()].
#' @keywords internal
#' @inheritParams expect_equal
#' @inheritParams capture_output_lines
#' @examples
#' tmp <- tempfile()
#'
#' # The first run always succeeds
#' expect_known_output(mtcars[1:10, ], tmp, print = TRUE)
#'
#' # Subsequent runs will succeed only if the file is unchanged
#' # This will succeed:
#' expect_known_output(mtcars[1:10, ], tmp, print = TRUE)
#'
#' \dontrun{
#' # This will fail
#' expect_known_output(mtcars[1:9, ], tmp, print = TRUE)
#' }
expect_known_output <- function(
  object,
  file,
  update = TRUE,
  ...,
  info = NULL,
  label = NULL,
  print = FALSE,
  width = 80
) {
  check_string(file)
  check_bool(update)
  check_bool(print)
  check_number_whole(width, min = 1)
  edition_deprecate(
    3,
    "expect_known_output()",
    "Please use `expect_snapshot_output()` instead"
  )

  act <- list()
  act$quo <- enquo(object)
  act$lab <- label %||% quo_label(act$quo)
  act <- append(act, eval_with_output(object, print = print, width = width))

  expect_file_unchanged_(file, act$out, update = update, info = info, ...)
  invisible(act$val)
}

expect_file_unchanged_ <- function(
  path,
  lines,
  ...,
  update = TRUE,
  info = NULL,
  trace_env = caller_env()
) {
  if (!file.exists(path)) {
    cli::cli_warn("Creating reference output.")
    brio::write_lines(lines, path)
    pass()
    return()
  }

  old_lines <- brio::read_lines(path)
  if (update) {
    brio::write_lines(lines, path)
    if (!all_utf8(lines)) {
      cli::cli_warn("New reference output is not UTF-8 encoded.")
    }
  }
  if (!all_utf8(old_lines)) {
    cli::cli_warn("Reference output is not UTF-8 encoded.")
  }

  comp <- waldo_compare(
    x = old_lines,
    x_arg = "old",
    y = lines,
    y_arg = "new",
    ...
  )
  if (length(comp) != 0) {
    msg <- sprintf(
      "Results have changed from known value recorded in %s.\n\n%s",
      encodeString(path, quote = "'"),
      paste0(comp, collapse = "\n\n")
    )
    fail(msg, info = info, trace_env = trace_env)
  } else {
    pass()
  }
}

#' Do you expect the output/result to equal a known good value?
#'
#' `expect_output_file()` behaves identically to [expect_known_output()].
#'
#' @section 3rd edition:
#' `r lifecycle::badge("deprecated")`
#'
#' `expect_output_file()` is deprecated in the 3rd edition;
#' please use [expect_snapshot_output()] and friends instead.
#'
#' @export
#' @keywords internal
expect_output_file <- function(
  object,
  file,
  update = TRUE,
  ...,
  info = NULL,
  label = NULL,
  print = FALSE,
  width = 80
) {
  check_string(file)
  check_bool(update)
  check_bool(print)
  check_number_whole(width, min = 1)
  # Code is a copy of expect_known_output()
  edition_deprecate(
    3,
    "expect_output_file()",
    "Please use `expect_snapshot_output()` instead"
  )

  act <- list()
  act$quo <- enquo(object)
  act$lab <- label %||% quo_label(act$quo)
  act <- append(act, eval_with_output(object, print = print, width = width))

  expect_file_unchanged_(file, act$out, update = update, info = info, ...)
  invisible(act$val)
}

#' @export
#' @rdname expect_known_output
expect_known_value <- function(
  object,
  file,
  update = TRUE,
  ...,
  info = NULL,
  label = NULL,
  version = 2
) {
  check_string(file)
  check_bool(update)
  check_number_whole(version, min = 1)
  edition_deprecate(
    3,
    "expect_known_value()",
    "Please use `expect_snapshot_value()` instead"
  )

  act <- quasi_label(enquo(object), label)

  if (!file.exists(file)) {
    cli::cli_warn("Creating reference value.")
    saveRDS(object, file, version = version)
    pass()
  } else {
    ref_val <- readRDS(file)
    comp <- compare(act$val, ref_val, ...)
    if (update && !comp$equal) {
      saveRDS(act$val, file, version = version)
    }

    if (!comp$equal) {
      msg <- sprintf(
        "%s has changed from known value recorded in %s.\n%s",
        act$lab,
        encodeString(file, quote = "'"),
        comp$message
      )
      fail(msg, info = info)
    } else {
      pass()
    }
  }

  invisible(act$val)
}

#' @export
#' @rdname expect_known_output
#' @usage NULL
expect_equal_to_reference <- function(..., update = FALSE) {
  edition_deprecate(
    3,
    "expect_equal_to_reference()",
    "Please use `expect_snapshot_value()` instead"
  )
  expect_known_value(..., update = update)
}

#' @export
#' @rdname expect_known_output
#' @param hash Known hash value. Leave empty and you'll be informed what
#'   to use in the test output.
expect_known_hash <- function(object, hash = NULL) {
  check_installed("digest")
  edition_deprecate(
    3,
    "expect_known_hash()",
    "Please use `expect_snapshot_value()` instead"
  )

  act <- quasi_label(enquo(object))
  act_hash <- digest::digest(act$val)
  if (!is.null(hash)) {
    act_hash <- substr(act_hash, 1, nchar(hash))
  }

  if (is.null(hash)) {
    cli::cli_warn("No recorded hash: use {substr(act_hash, 1, 10)}.")
    pass()
  } else {
    if (hash != act_hash) {
      msg <- sprintf(
        "Expected value to hash to %s.\nActual hash: %s",
        hash,
        act_hash
      )
      fail(msg)
    } else {
      pass()
    }
  }

  invisible(act$val)
}

all_utf8 <- function(x) {
  !anyNA(iconv(x, "UTF-8", "UTF-8"))
}
