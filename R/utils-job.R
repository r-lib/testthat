path_to_write <- function(x) {
  normalizePath(x, winslash = "/", mustWork = FALSE)
}

tmp_for_job <- function(name, content) {
  tmp <- tempfile(paste0(name, "-"), fileext = ".R")
  write_lines(content, tmp)
  invisible(tmp)
}

job_exists <- function(job) {
  rstudioapi::jobAddProgress(job, 0)
  invisible(TRUE)
}
