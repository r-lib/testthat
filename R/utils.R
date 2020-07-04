#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

null <- function(...) invisible()

klass <- function(x) paste(class(x), collapse = "/")

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

can_entrace <- function(cnd) {
  !inherits(cnd, "Throwable")
}

isNA <- function(x) length(x) == 1 && is.na(x)
