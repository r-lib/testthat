#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

null <- function(...) invisible()

escape_regex <- function(x) {
  chars <- c(
    "*",
    ".",
    "?",
    "^",
    "+",
    "$",
    "|",
    "(",
    ")",
    "[",
    "]",
    "{",
    "}",
    "\\"
  )
  gsub(
    paste0("([\\", paste0(collapse = "\\", chars), "])"),
    "\\\\\\1",
    x,
    perl = TRUE
  )
}

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
