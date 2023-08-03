#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

null <- function(...) invisible()

# Tools for finding srcrefs -----------------------------------------------

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

sys_calls <- function(...) {
  idx <- sys_index(...)
  sys.calls()[idx]
}

sys_index <- function(bottom = NULL, top = caller_env(), trim_testthat = FALSE) {
  frames <- sys.frames()
  if (is.null(bottom)) {
    bottom_idx <- 1
  } else {
    bottom_idx <- Position(function(env) identical(bottom, env), frames)
    if (is.na(bottom_idx)) {
      return(NULL)
      abort("Can't find `bottom` on stack")
    }
  }

  top_idx <- Position(function(env) identical(top, env), frames)
  if (is.na(top_idx)) {
    return(NULL)
    abort("Can't find `top` on stack")
  }

  idx <- seq2(bottom_idx, top_idx)

  parents <- sys.parents()[idx]

  if (trim_testthat) {
    parents <- sys.parents()[idx] # remember to handle 0
    funs <- lapply(parents, sys.function)
    # try looking at lapply(frames, topenv) instead
    envs <- lapply(funs, environment)
    names <- map_chr(envs, environmentName)
    idx <- idx[!names %in% c("testthat", "base")]
  }

  idx
}

escape_regex <- function(x) {
  chars <- c("*", ".", "?", "^", "+", "$", "|", "(", ")", "[", "]", "{", "}", "\\")
  gsub(paste0("([\\", paste0(collapse = "\\", chars), "])"), "\\\\\\1", x, perl = TRUE)
}

# For R 3.1
dir.exists <- function(paths) {
  file.exists(paths) & file.info(paths)$isdir
}

maybe_restart <- function(restart) {
  if (!is.null(findRestart(restart))) {
    invokeRestart(restart)
  }
}

# Backport for R 3.2
strrep <- function(x, times) {
  x = as.character(x)
  if (length(x) == 0L)
    return(x)
  unlist(.mapply(function(x, times) {
    if (is.na(x) || is.na(times))
      return(NA_character_)
    if (times <= 0L)
      return("")
    paste0(replicate(times, x), collapse = "")
  }, list(x = x, times = times), MoreArgs = list()), use.names = FALSE)
}

# Backport for R < 4.0
deparse1 <- function(expr, ...) paste(deparse(expr, ...), collapse = "\n")

can_entrace <- function(cnd) {
  !inherits(cnd, "Throwable")
}

# Need to strip environment and source references to make lightweight
# function suitable to send to another process
transport_fun <- function(f) {
  environment(f) <- .GlobalEnv
  f <- zap_srcref(f)
  f
}

isNA <- function(x) length(x) == 1 && is.na(x)

compact <- function(x) {
  x[lengths(x) > 0]
}

# Handled specially in test_code so no backtrace
testthat_warn <- function(message, ...) {
  warn(message, class = "testthat_warn", ...)
}

split_by_line <- function(x) {
  trailing_nl <- grepl("\n$", x)

  x <- strsplit(x, "\n")
  x[trailing_nl] <- lapply(x[trailing_nl], c, "")
  x
}

rstudio_tickle <- function() {
  if (!is_installed("rstudioapi")) {
    return()
  }

  if (!rstudioapi::hasFun("executeCommand")) {
    return()
  }

  rstudioapi::executeCommand("vcsRefresh")
  rstudioapi::executeCommand("refreshFiles")
}

check_installed <- function(pkg, fun) {
  if (is_installed(pkg)) {
    return()
  }

  abort(c(
    paste0("The ", pkg, " package must be installed in order to use `", fun, "`"),
    i = paste0("Do you need to run `install.packages('", pkg, "')`?")
  ))
}

first_upper <- function(x) {
  substr(x, 1, 1) <- toupper(substr(x, 1, 1))
  x
}

in_rcmd_check <- function() {
  nzchar(Sys.getenv("_R_CHECK_PACKAGE_NAME_", ""))
}

map_chr <- function(.x, .f, ...) {
  .f <- as_function(.f)
  vapply(.x, .f, FUN.VALUE = character(1), ...)
}
map_lgl <- function(.x, .f, ...) {
  .f <- as_function(.f)
  vapply(.x, .f, FUN.VALUE = logical(1), ...)
}

r_version <- function() paste0("R", getRversion()[, 1:2])

# Waiting on https://github.com/r-lib/withr/pull/188
local_tempfile1 <- function(lines, env = parent.frame()) {
  path <- withr::local_tempfile(.local_envir = env)
  writeLines(lines, path)
  path
}
