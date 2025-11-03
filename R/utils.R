#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

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
  if (!is_positron()) {
    rstudioapi::executeCommand("refreshFiles")
  }
}

is_positron <- function() {
  nzchar(Sys.getenv("POSITRON", ""))
}

first_upper <- function(x) {
  substr(x, 1, 1) <- toupper(substr(x, 1, 1))
  x
}

in_check_reporter <- function() {
  isTRUE(the$in_check_reporter)
}

r_version <- function() paste0("R", getRversion()[, 1:2])

# Supress cli wrapping
no_wrap <- function(x) {
  x <- gsub(" ", "\u00a0", x, fixed = TRUE)
  x <- gsub("\n", "\f", x, fixed = TRUE)
  x
}

paste_c <- function(...) {
  paste0(c(...), collapse = "")
}

# from rematch2
re_match <- function(text, pattern, perl = TRUE, ...) {
  stopifnot(is.character(pattern), length(pattern) == 1, !is.na(pattern))
  text <- as.character(text)
  match <- regexpr(pattern, text, perl = perl, ...)
  start <- as.vector(match)
  length <- attr(match, "match.length")
  end <- start + length - 1L
  matchstr <- substring(text, start, end)
  matchstr[start == -1] <- NA_character_
  res <- data.frame(stringsAsFactors = FALSE, .text = text, .match = matchstr)
  if (!is.null(attr(match, "capture.start"))) {
    gstart <- attr(match, "capture.start")
    glength <- attr(match, "capture.length")
    gend <- gstart + glength - 1L
    groupstr <- substring(text, gstart, gend)
    groupstr[gstart == -1] <- NA_character_
    dim(groupstr) <- dim(gstart)
    res <- cbind(groupstr, res, stringsAsFactors = FALSE)
  }
  names(res) <- c(attr(match, "capture.names"), ".text", ".match")
  class(res) <- c("tbl_df", "tbl", class(res))
  res
}
