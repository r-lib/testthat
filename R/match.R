match <- function (act, ref, wildcard,
                   max_diffs = 5, max_lines = 5,
                   width = cli::console_width()) {
  stopifnot(length(act) == length(ref))
  stopifnot(is.character(wildcard), identical(length(wildcard), 1L))

  same <- unlist(Map(a = act, r = ref, f = function (a, r) {
    r <- escape_regex(r)
    r <- gsub(wildcard, '.*', r, fixed = TRUE)
    grepl(paste0('^', r, '$'), a)
  }))

  if (all(same)) {
    no_difference()
  } else {
    mismatches <- mismatch_character(act, ref, !same)
    difference(format(
      mismatches,
      max_diffs = max_diffs,
      max_lines = max_lines,
      width = width
    ))
  }
}
