# data is list of character vectors
snap_to_md <- function(data) {
  h2 <- paste0("# ", names(data), "\n\n")
  code_block <- function(x) paste0(indent_add(x), collapse = "\n\n---\n\n")
  data <- map_chr(data, code_block)

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

    # Remove first line, separator, line above and line below
    # Only remove last line if it's empty (to handle missing final newlines)
    sep_loc <- which(sep)
    drop <- c(1, sep_loc, sep_loc + 1, sep_loc - 1)
    if (length(lines) > 0 && lines[length(lines)] == "") {
      drop <- c(drop, length(lines))
    }

    cases <- unname(split(lines[-drop], case_group[-drop]))
    code_unblock <- function(x) paste0(indent_del(x), collapse = "\n")
    map_chr(cases, code_unblock)
  }

  lapply(tests, split_tests)
}

read_snaps <- function(path) {
  if (file.exists(path)) {
    lines <- brio::read_lines(path)
    snap_from_md(lines)
  } else {
    list()
  }
}

write_snaps <- function(snaps, path, delete = FALSE) {
  snaps <- compact(snaps)
  if (length(snaps) == 0) {
    if (delete) {
      unlink(path)
    }
    return()
  }

  out <- snap_to_md(snaps)
  brio::write_file(out, path)
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
