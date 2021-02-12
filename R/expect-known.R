#' Expectations: is the output or the value equal to a known good value?
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
expect_known_output <- function(object, file,
                                update = TRUE,
                                ...,
                                info = NULL,
                                label = NULL,
                                print = FALSE,
                                width = 80) {

  edition_deprecate(3, "expect_known_output()",
    "Please use `expect_snapshot_output()` instead"
  )

  act <- list()
  act$quo <- enquo(object)
  act$lab <- label %||% quo_label(act$quo)
  act <- append(act, eval_with_output(object, print = print, width = width))

  compare_file(file, act$out, update = update, info = info, ...)
  invisible(act$val)
}

compare_file <- function(path, lines, ..., update = TRUE, info = NULL) {
  if (!file.exists(path)) {
    warning("Creating reference output", call. = FALSE)
    write_lines(lines, path)
    succeed()
    return()
  }

  old_lines <- read_lines(path)
  if (update) {
    write_lines(lines, path)
    if (!all_utf8(lines)) {
      warning("New reference output is not UTF-8 encoded", call. = FALSE)
    }
  }
  if (!all_utf8(old_lines)) {
    warning("Reference output is not UTF-8 encoded", call. = FALSE)
  }

  comp <- waldo_compare(
    x = enc2native(old_lines), x_arg = "old",
    y = lines, y_arg = "new",
    ...
  )
  expect(
    length(comp) == 0,
    sprintf(
      "Results have changed from known value recorded in %s.\n\n%s",
      encodeString(path, quote = "'"), paste0(comp, collapse = "\n\n")
    ),
    info = info,
    trace_env = caller_env()
  )
}

#' Expectations: is the output or the value equal to a known good value?
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
expect_output_file <- function(object, file,
                               update = TRUE,
                               ...,
                               info = NULL,
                               label = NULL,
                               print = FALSE,
                               width = 80) {

  # Code is a copy of expect_known_output()
  edition_deprecate(3, "expect_output_file()",
                    "Please use `expect_snapshot_output()` instead"
  )

  act <- list()
  act$quo <- enquo(object)
  act$lab <- label %||% quo_label(act$quo)
  act <- append(act, eval_with_output(object, print = print, width = width))

  compare_file(file, act$out, update = update, info = info, ...)
  invisible(act$val)
}

#' @export
#' @rdname expect_known_output
expect_known_value <- function(object, file,
                               update = TRUE,
                               ...,
                               info = NULL,
                               label = NULL,
                               version = 2) {
  edition_deprecate(3, "expect_known_value()",
    "Please use `expect_snapshot_value()` instead"
  )

  act <- quasi_label(enquo(object), label, arg = "object")

  if (!file.exists(file)) {
    warning("Creating reference value", call. = FALSE)
    saveRDS(object, file, version = version)
    succeed()
  } else {
    ref_val <- readRDS(file)
    comp <- compare(act$val, ref_val, ...)
    if (update && !comp$equal) {
      saveRDS(act$val, file, version = version)
    }

    expect(
      comp$equal,
      sprintf(
        "%s has changed from known value recorded in %s.\n%s",
        act$lab, encodeString(file, quote = "'"), comp$message
      ),
      info = info
    )
  }

  invisible(act$value)
}

#' @export
#' @rdname expect_known_output
#' @usage NULL
expect_equal_to_reference <- function(..., update = FALSE) {
  edition_deprecate(3, "expect_equal_to_reference()",
    "Please use `expect_snapshot_value()` instead"
  )
  expect_known_value(..., update = update)
}

#' @export
#' @rdname expect_known_output
#' @param hash Known hash value. Leave empty and you'll be informed what
#'   to use in the test output.
expect_known_hash <- function(object, hash = NULL) {
  edition_deprecate(3, "expect_known_hash()",
    "Please use `expect_snapshot_value()` instead"
  )

  act <- quasi_label(enquo(object), arg = "object")
  act_hash <- digest::digest(act$val)
  if (!is.null(hash)) {
    act_hash <- substr(act_hash, 1, nchar(hash))
  }

  if (is.null(hash)) {
    warning(paste0("No recorded hash: use ", substr(act_hash, 1, 10)))
    succeed()
  } else {
    expect(
      hash == act_hash,
      sprintf("Value hashes to %s, not %s", act_hash, hash)
    )
  }

  invisible(act$value)
}
