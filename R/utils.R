#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

null <- function(...) invisible()

# Tools for finding srcrefs -----------------------------------------------

find_first_srcref <- function(start) {
  calls <- sys.calls()
  calls <- calls[seq2(start, length(calls))]

  for (call in calls) {
    srcref <- attr(call, "srcref")
    if (!is.null(srcref)) {
      return(srcref)
    }
  }
  NULL
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
