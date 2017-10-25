#' @importFrom magrittr %>%
#' @export
magrittr::`%>%`

`%||%` <- function(a, b) if (is.null(a)) b else a

starts_with <- function(string, prefix) {
  substr(string, 1, nchar(prefix)) == prefix
}

console_width <- function() {
  rstudio <- Sys.getenv("RSTUDIO_CONSOLE_WIDTH")
  if (identical(rstudio, "")) {
    getOption("width", 80)
  } else {
    as.integer(rstudio)
  }
}

is_directory <- function(x) file.info(x)$isdir
is_readable <- function(x) file.access(x, 4) == 0

null <- function(...) invisible()

klass <- function(x) paste(class(x), collapse = "/")

first_last <- function(x, max = 10, filler = "...") {
  if (length(x) <= 2 * max + 1) {
    x
  } else {
    c(
      x[seq_len(max)],
      filler,
      x[seq.int(to = length(x), length.out = max)]
    )
  }
}

# Tools for finding srcrefs -----------------------------------------------

show_stack <- function(star = integer(), n = sys.nframe() - 1L) {
  pos <- seq_len(n)
  fun <- vapply(sys.calls()[pos], f_name, character(1))
  has_src <- vapply(sys.calls()[pos], function(x) !is.null(attr(x, "srcref")), logical(1))
  env <- vapply(lapply(sys.frames()[pos], parent.env), env_name, character(1))
  parent <- sys.parents()[pos]

  data.frame(
    `*` = ifelse(pos %in% star, "*", ""),
    fun = fun,
    src = ifelse(has_src, "x", ""),
    env = env,
    par = parent,
    stringsAsFactors = FALSE,
    check.names = FALSE
  )
}

env_name <- function(x) {
  str <- capture_output(x, print = TRUE)
  gsub("<environment: |>", "", str)
}

find_first_srcref <- function(calls) {
  for (call in calls) {
    srcref <- attr(call, "srcref")
    if (!is.null(srcref)) {
      return(srcref)
    }
  }
  NULL
}

f_name <- function(x) {
  if (is.call(x)) {
    f_name(x[[1]])
  } else if (is.name(x)) {
    as.character(x)
  } else {
    ""
  }
}

escape_regex <- function(x) {
  chars <- c("*", ".", "?", "^", "+", "$", "|", "(", ")", "[", "]", "{", "}", "\\")
  gsub(paste0("([\\", paste0(collapse = "\\", chars), "])"), "\\\\\\1", x, perl = TRUE)
}

# For R 3.1
dir.exists <- function(paths) {
  file.exists(paths) & file.info(paths)$isdir
}
