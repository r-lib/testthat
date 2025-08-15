create_gha_summary <- function(results) {
  results <- lapply(results, gha_summarize_test)
  totals <- list(
    n_fail = sum(vapply(results, "[[", integer(1), "n_fail")),
    n_warn = sum(vapply(results, "[[", integer(1), "n_warn")),
    n_skip = sum(vapply(results, "[[", integer(1), "n_skip")),
    n_ok = sum(vapply(results, "[[", integer(1), "n_ok")),
    real = sum(vapply(results, "[[", double(1), "real"))
  )

  # summary -----------------------------------------------------------------
  gha_summary_write("### Test summary")
  gha_summary_write()
  gha_summary_write("| FAIL | WARN | SKIP | PASS | Time |")
  gha_summary_write("|-----:|-----:|-----:|-----:|:-----|")
  gha_summary_write(
    c("|", if (totals$n_fail > 0) totals$n_fail),
    c("|", if (totals$n_warn > 0) totals$n_warn),
    c("|", if (totals$n_skip > 0) totals$n_skip),
    c("|", totals$n_ok),
    c("|", num_exact(totals$real, 3), "|")
  )

  # issue details -----------------------------------------------------------
  gha_summary_write()
  gha_summary_write("<details>")
  gha_summary_write()

  gha_summary_write("### Test details")
  gha_summary_write()
  gha_summary_write("| File | Test | FAIL | WARN | SKIP | PASS | Time |")
  gha_summary_write("|:-----|:-----|-----:|-----:|-----:|-----:|:-----|")

  issues <- Filter(function(x) length(x$results) != x$n_ok, results)
  for (issue in issues) {
    gha_summary_write(
      c("|", issue$file),
      c("|", md_escape(issue$test)),
      c("|", if (totals$n_fail > 0) issue$n_fail),
      c("|", if (totals$n_warn > 0) issue$n_warn),
      c("|", if (totals$n_skip > 0) issue$n_skip),
      c("|", issue$n_ok),
      c("|", num_exact(issue$real, 3), "|")
    )
  }
  gha_summary_write()
  gha_summary_write("</details>")
  gha_summary_write()

  invisible(results)
}

# Helpers ----------------------------------------------------------------------

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

gha_path <- function() {
  nope <- c("false", "no", "off", "n", "0", "nope", "nay")
  if (tolower(Sys.getenv("TESTTHAT_GHA_SUMMARY")) %in% nope) {
    return()
  }
  if ((out <- Sys.getenv("GITHUB_STEP_SUMMARY")) == "") {
    return()
  }
  out
}

gha_summary_write <- function(...) {
  path <- gha_path()
  if (is.null(path)) {
    return()
  }

  string <- paste0(c(..., "\n"), collapse = "")
  Encoding(string) <- "unknown"
  cat(string, file = path, append = TRUE)
}

md_escape <- function(x) {
  x <- gsub("|", "\\|", x, fixed = TRUE)
  x <- gsub("\n", " ", x, fixed = TRUE)
  x
}
