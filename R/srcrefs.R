find_expectation_srcref <- function(
  test_code_frame = NULL,
  top = caller_env()
) {
  # It's not possible to give useful srcrefs interactively so don't even try
  path <- getOption("testthat_path")
  if (is.null(path)) {
    return(NULL)
  }

  # Scope our search to the current file loaded with source_file()
  file_srcref <- srcref(srcfile(path), c(1, 1, 1e5, 1e5))

  # Now attempt to narrow the scope to a call that leads to test_code(). That's
  # usually test_that() but might be describe(), it(), or another wrapper.
  testthat_srcref <- find_srcref(
    top = test_code_frame,
    container = file_srcref
  )

  # Now we can find the bottom-most call with a srcref that's inside that scope
  call_srcref <- find_srcref(
    top = top,
    bottom = test_code_frame,
    container = testthat_srcref %||% file_srcref
  )

  # If we can't find that we fall back to the test
  call_srcref %||% testthat_srcref
}

find_srcref <- function(bottom = NULL, top = caller_env(), container = NULL) {
  idx <- sys_index(bottom, top)
  calls <- sys.calls()[rev(idx)]

  for (call in calls) {
    srcref <- attr(call, "srcref")

    if (!is.null(srcref)) {
      if (is.null(container) || srcref_inside(srcref, container)) {
        return(srcref)
      }
    }
  }

  NULL
}

srcref_inside <- function(needle, haystack) {
  stopifnot(inherits(needle, "srcref"), inherits(haystack, "srcref"))

  needle_file <- attr(needle, "srcfile")$filename
  haystack_file <- attr(haystack, "srcfile")$filename

  if (!identical(needle_file, haystack_file)) {
    return(FALSE)
  }

  sign_pair <- function(x, y) {
    diff <- y - x
    if (diff[1] == 0) sign(diff[2]) else sign(diff[1])
  }

  sign_pair(needle[1:2], haystack[1:2]) <= 0 &&
    sign_pair(needle[3:4], haystack[3:4]) >= 0
}

sys_index <- function(bottom = NULL, top = caller_env()) {
  frames <- sys.frames()
  if (is.null(bottom)) {
    bottom_idx <- 1
  } else {
    bottom_idx <- Position(function(env) identical(bottom, env), frames)
    if (is.na(bottom_idx)) {
      abort("Can't find `bottom` on stack")
    }
  }

  top_idx <- Position(function(env) identical(top, env), frames)
  if (is.na(top_idx)) {
    abort("Can't find `top` on stack")
  }

  seq2(bottom_idx, top_idx)
}
