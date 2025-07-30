#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

null <- function(...) invisible()

maybe_restart <- function(restart) {
  if (!is.null(findRestart(restart))) {
    invokeRestart(restart)
  }
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
