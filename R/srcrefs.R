
find_expectation_srcref <- function(test_code_frame = NULL, top = caller_env()) {
  # First find the call the user made that lead to test_code(). This is usually
  # test_that() but might be it() or a user defined wrapper. We assume it's the
  # bottom-most call prior to test_code() that has a srcref
  testthat_srcref <- find_srcref(
    top = test_code_frame,
    trim_testthat = TRUE
  )
  if (is.null(testthat_srcref)) {
    return(NULL)
  }

  # Now we can find the bottom-most call with a srcref that's found inside
  # the call to test_that()
  call_srcref <- find_srcref(
    top = top,
    bottom = test_code_frame,
    container = testthat_srcref
  )

  # If we can't find that we fall back to the test
  call_srcref %||% testthat_srcref
}

find_srcref <- function(bottom = NULL,
                        top = caller_env(),
                        trim_testthat = TRUE,
                        container = NULL) {

  idx <- sys_index(bottom, top, trim_testthat = trim_testthat)
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

sys_index <- function(bottom = NULL, top = caller_env(), trim_testthat = FALSE) {
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

  idx <- seq2(bottom_idx, top_idx)

  # Remove calls from inside testthat to make debugging on testthat itself
  # easier, since load_all() will keep srcrefs for testthat functions.
  if (trim_testthat) {
    parents <- sys.parents()[idx]
    funs <- lapply(parents, sys.function)
    envs <- lapply(funs, environment)
    names <- map_chr(envs, environmentName)
    idx <- idx[names != "testthat"]
  }

  idx
}
