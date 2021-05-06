# data is list of character vectors
snap_to_md <- function(data) {
  h2 <- paste0("# ", names(data), "\n\n")
  code_block <- function(x) paste0(indent_add(x), collapse = "\n\n---\n\n")
  data <- vapply(data, code_block, character(1))

  paste0(h2, data, "\n\n", collapse = "")
}

snap_from_md <- function(lines) {
  lines <- gsub("\r", "", lines, fixed = TRUE)

  h2 <- grepl("^# ", lines)
  tests_group <- cumsum(h2)
  tests <- split(lines[!h2], tests_group[!h2])
  names(tests) <- gsub("^# ", "", lines[h2])

  split_tests <- function(lines) {
    sep <- grepl("^-{3,}", lines)
    case_group <- cumsum(sep)

    # Remove first line and last line, separator, line above and line below
    sep_loc <- which(sep)
    drop <- c(1, sep_loc, sep_loc + 1, sep_loc - 1, length(lines))

    cases <- unname(split(lines[-drop], case_group[-drop]))
    code_unblock <- function(x) paste0(indent_del(x), collapse = "\n")
    vapply(cases, code_unblock, character(1))
  }

  lapply(tests, split_tests)
}

# Helpers -----------------------------------------------------------------

indent_add <- function(x, prefix = "    ") {
  paste0(prefix, gsub("\n", paste0("\n", prefix), x, fixed = TRUE))
}
indent_del <- function(x, prefix = "    ") {
  x <- gsub(paste0("^", prefix), "", x)
  x <- gsub(paste0("\n", prefix), "\n", x)
  x
}
