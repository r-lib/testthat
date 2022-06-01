
create_gha_summary <- function(results) {
  nope <- c("false", "no", "off", "n", "0", "nope", "nay")
  if (tolower(Sys.getenv("TESTTHAT_GHA_SUMMARY")) %in% nope) {
    return()
  }
  if ((out <- Sys.getenv("GITHUB_STEP_SUMMARY")) == "") {
    return()
  }

  p <- function(...) cat(..., file = out, append = TRUE)

  # header
  p("<details>\n\n")
  p("# Test results\n\n")
  p("| FAIL | WARN | SKIP | PASS | Context | Test | Time |\n")
  p("|-----:|-----:|-----:|-----:|:--------|:-----|:-----|\n")

  # one line per test
  per_test <- lapply(results, gha_file_summary, p = p)

  # totals
  totals <- lapply(do.call(rbind, per_test), sum)
  p(paste0(
    "|", totals$fail,
    "|", totals$warn,
    "|", totals$skip,
    "|", totals$ok,
    "|", "Total",
    "|", "",
    "|", sprintf("%.3f s", totals$time),
    "|\n"
  ))

  p("\n</details>\n")

  invisible(results)
}

gha_file_summary <- function(result, p) {

  n_fail <- n_skip <- n_warn <- n_ok <- 0L
  for (exp in result$results) {
    if (expectation_broken(exp)) {
      n_fail <- n_fail + 1L
    } else if (expectation_skip(exp)) {
      n_skip <- n_skip + 1L
    } else if (expectation_warning(exp)) {
      n_warn <- n_warn + 1L
    } else {
      n_ok <- n_ok + 1L
    }
  }

  ctx <- context_name(result$file)
  time <- sprintf("%.3f s", result$real)

  escape <- function(x) {
    x <- gsub("|", "\\|", x, fixed = TRUE)
    x <- gsub("\n", " ", x, fixed = TRUE)
    x
  }

  p(paste0(
    "|", n_fail,
    "|", n_warn,
    "|", n_skip,
    "|", n_ok,
    "|", escape(ctx),
    "|", escape(result$test),
    "|", time,
    "|\n"
  ))

  data.frame(
    stringsAsFactors = FALSE,
    fail = n_fail,
    skip = n_skip,
    warn = n_warn,
    ok = n_ok,
    time = result$real
  )
}
