
create_gha_summary <- function(results) {
  nope <- c("false", "no", "off", "n", "0", "nope", "nay")
  if (tolower(Sys.getenv("TESTTHAT_GHA_SUMMARY")) %in% nope) {
    return()
  }
  if ((out <- Sys.getenv("GITHUB_STEP_SUMMARY")) == "") {
    return()
  }

  out <- file(out, open = "a+b", encoding = "unknown")
  on.exit(close(out), add = TRUE)

  p <- function(...) {
    s <- paste0(...)
    Encoding(s) <- "unknown"
    cat(s, file = out, append = TRUE)
  }
  fmt_time <- function(x) sprintf("%.3fs", x)

  results <- lapply(results, gha_summarize_test)
  totals <- list(
    n_fail = sum(vapply(results, "[[", integer(1), "n_fail")),
    n_warn = sum(vapply(results, "[[", integer(1), "n_warn")),
    n_skip = sum(vapply(results, "[[", integer(1), "n_skip")),
    n_ok   = sum(vapply(results, "[[", integer(1), "n_ok")),
    real   = sum(vapply(results, "[[", double(1), "real"))
  )

  # summary
  p("### Test summary\n\n")
  p("| \u274c FAIL | \u26a0 WARN | \u23ed\ufe0f SKIP | \u2705 PASS | \u23f1 Time |\n")
  p("|------------:|------------:|------------------:|------------:|:------------|\n")

  p(paste0(
    "|", if (totals$n_fail > 0) paste0("\u274c **", totals$n_fail, "**"),
    "|", if (totals$n_warn > 0) paste0("\u26a0 **", totals$n_warn, "**"),
    "|", if (totals$n_skip > 0) paste0("\u23ed\ufe0f **", totals$n_skip, "**"),
    "|", paste0("\u2705 **", totals$n_ok, "**"),
    "|", fmt_time(totals$real),
    "|\n"
  ))

  # tests with issues
  p("\n<details>\n\n")

  p("### Test details\n\n")
  p("| \u274c FAIL | \u26a0 WARN | \u23ed\ufe0f SKIP | \u2705 PASS | context | test | \u23f1 Time |\n")
  p("|------------:|------------:|------------------:|------------:|:--------|:-----|:------------|\n")

  escape <- function(x) {
    x <- gsub("|", "\\|", x, fixed = TRUE)
    x <- gsub("\n", " ", x, fixed = TRUE)
    x
  }

  issues <- Filter(function(x) length(x$results) != x$n_ok, results)
  for (issue in issues) {
    p(paste0(
      "|", if (issue$n_fail > 0) paste0("\u274c **", issue$n_fail, "**"),
      "|", if (issue$n_warn > 0) paste0("\u26a0 **", issue$n_warn, "**"),
      "|", if (issue$n_skip > 0) paste0("\u23ed\ufe0f **", issue$n_skip, "**"),
      "|", if (issue$n_ok   > 0) paste0("\u2705 **", issue$n_ok, "**"),
      "|", escape(context_name(issue$file)),
      "|", escape(issue$test),
      "|", fmt_time(issue$real),
      "|\n"
    ))
  }

  p("\n</details>\n\n\n")

  invisible(results)
}

gha_summarize_test <- function(test) {

  test$n_fail <- test$n_skip <- test$n_warn <- test$n_ok <- 0L
  for (exp in test$results) {
    if (expectation_broken(exp)) {
      test$n_fail <- test$n_fail + 1L
    } else if (expectation_skip(exp)) {
      test$n_skip <- test$n_skip + 1L
    } else if (expectation_warning(exp)) {
      test$n_warn <- test$n_warn + 1L
    } else {
      test$n_ok <- test$n_ok + 1L
    }
  }

  test
}
