path_to_write <- function(x) {
  normalizePath(x, winslash = "/", mustWork = FALSE)
}

tmp_for_job <- function(name, content) {
  tmp <- tempfile(paste0(name, "-"), fileext = ".R")
  write_lines(content, tmp)
  invisible(tmp)
}

verify_job_exists <- function(job) {
  if (!rstudioapi::isAvailable("1.2")) return(FALSE)

  rstudioapi::jobAddProgress(job, 0)
  invisible(TRUE)
}

can_stop_jobs <- function() {
  if (!rstudioapi::isAvailable("1.2")) return(FALSE)
  rstudioapi::hasFun("launcher.controlJob")
}

stop_auto_test_package_job <- function(job) {
  rstudioapi::verifyAvailable("1.2")

  rstudioapi::launcherControlJob(job, "stop")
  cat(paste0("Job ", colourise(job, "skip"), " stopped.\n"))
  cat("The package is no more contiuously tested.\n")
  invisible(TRUE)
}

explain_how_to_stop_job <- function() {
  warning(colourise(
    "In this version of RStudio, jobs cannot be stopped automatically\n",
    "warning"
  ), call. = FALSE)
  message(paste0(
    'Jobs can be stopped manually from the ',
    colourise("Jobs", "success"),
    ' pane, or restarting the current R session.\n'
  ))
  invisible(FALSE)
}

rstudioapi_required <- function() {
  if (!requireNamespace("rstudioapi", quietly = TRUE)) {
    stop(
      "rstudioapi required to run auto_test_package_job(). Please install.",
      call. = FALSE
    )
  }
  invisible(TRUE)
}

code_path_from_pkg <- function(pkg) {
  code_path <- file.path(pkg$path, c("R", "src"))
  code_path <- code_path[file.exists(code_path)]
  normalizePath(code_path)
}

test_path_from_pkg <- function(pkg) {
  normalizePath(file.path(pkg$path, "tests", "testthat"))
}
