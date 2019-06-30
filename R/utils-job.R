path_to_write <- function(x) {
  normalizePath(x, winslash = "/", mustWork = FALSE)
}

tmp_for_job <- function(name, content) {
  tmp <- tempfile(paste0(name, "-"), fileext = ".R")
  write_lines(content, tmp)
  invisible(tmp)
}

verify_job_exists <- function(job) {
  rstudioapi::jobAddProgress(job, 0)
  invisible(TRUE)
}

can_close_jobs <- function() {
  rstudioapi::hasFun("launcher.controlJob")
}

close_auto_test_package_job <- function(job) {
  rstudioapi::launcherControlJob(job, "stop")
  cat(paste0("Job ", colourise(job, "skip"), " stopped.\n"))
  cat("The package is no more contiuously tested.\n")
  invisible(TRUE)
}

explain_how_to_close_job <- function() {
  warning(colourise(
    "In this version of RStudio, jobs cannot be closed automatically\n",
    "warning"
  ), call. = FALSE)
  message(paste0(
    'Jobs can be stopped manually from the ',
    colourise("Jobs", "success"),
    ' pane, or restarting the current R session.\n'
  ))
  invisible(FALSE)
}


devtools_required <- function() {
  if (!requireNamespace("devtools", quietly = TRUE)) {
    stop(
      "devtools required to run auto_test_package(). Please install.",
      call. = FALSE
    )
  }

}
