#' Download snapshots from GitHub
#'
#' @description
#' If your snapshots fail on GitHub, it can be a pain to figure out exactly
#' why, or to incporate them into your local package. This function makes it
#' easy.
#'
#' Note that you should not generally need to fill out this function yourself;
#' instead copy and paste from the hint emitted on GitHub.
#'
#' @param repository Repository name, e.g. `"r-lib/testthat"`.
#' @param run_id Run ID, e.g. `"47905180716"`. You can find this in the action url.
#' @param dest_dir Directory to download to. Defaults to the current directory.
#' @export
snapshot_download_gh <- function(repository, run_id, dest_dir = ".") {
  check_installed("gh")

  dest_snaps <- file.path(dest_dir, "tests", "testthat", "_snaps")
  if (!dir.exists(dest_snaps)) {
    cli::cli_abort("No snapshot directory found in {.file {dest_dir}}.")
  }

  job_id <- gh_find_job(repository, run_id)
  artifact_id <- gh_find_artifact(repository, job_id)

  path <- withr::local_tempfile(pattern = "gh-snaps-")
  gh_download_artifact(repository, artifact_id, path)

  inner_dir <- dir(path, full.names = TRUE)[1]
  src_snaps <- file.path(inner_dir, "tests", "testthat", "_snaps")
  dir_copy(src_snaps, dest_snaps)
}

snap_download_hint <- function() {
  repository <- Sys.getenv("GITHUB_REPOSITORY")
  run_id <- Sys.getenv("GITHUB_RUN_ID")

  sprintf(
    "* Call `snapshot_download_gh(\"%s\", %s)` to download the snapshots from GitHub.\n",
    repository,
    run_id
  )
}

gh_find_job <- function(repository, run_id) {
  jobs_json <- gh::gh(
    "/repos/{repository}/actions/runs/{run_id}/jobs",
    repository = repository,
    run_id = run_id
  )
  jobs <- data.frame(
    id = map_dbl(jobs_json$jobs, \(x) x$id),
    name = map_chr(jobs_json$jobs, \(x) x$name)
  )
  jobs <- jobs[order(jobs$name), ]

  idx <- menu(jobs$name, title = "Which job?")
  if (idx == 0) {
    cli::cli_abort("Selection cancelled.")
  }
  jobs$id[[idx]]
}

gh_find_artifact <- function(repository, job_id) {
  job_logs <- gh::gh(
    "GET /repos/{repository}/actions/jobs/{job_id}/logs",
    repository = repository,
    job_id = job_id,
    .send_headers = c("Accept" = "application/vnd.github.v3+json")
  )

  log_lines <- strsplit(job_logs$message, "\r?\n")[[1]]
  matches <- re_match(log_lines, "Artifact download URL: (?<artifact_url>.*)")
  matches <- matches[!is.na(matches$artifact_url), ]

  if (!nrow(matches)) {
    cli::cli_abort("Failed to find artifact")
  }

  # Take last artifact URL; if the job has failed the previous artifact will
  # be the R CMD check logs
  artifact_url <- matches$artifact_url[nrow(matches)]
  basename(artifact_url)
}

gh_download_artifact <- function(repository, artifact_id, path) {
  zip_path <- withr::local_tempfile(pattern = "gh-zip-")
  gh::gh(
    "/repos/{repository}/actions/artifacts/{artifact_id}/{archive_format}",
    repository = repository,
    artifact_id = artifact_id,
    archive_format = "zip",
    .destfile = zip_path
  )
  utils::unzip(zip_path, exdir = path)
  invisible(path)
}

# Directory helpers ------------------------------------------------------------

dir_create <- function(paths) {
  for (path in paths) {
    dir.create(path, recursive = TRUE, showWarnings = FALSE)
  }
  invisible(paths)
}

dir_copy <- function(src_dir, dst_dir) {
  # First create directories
  dirs <- list.dirs(src_dir, recursive = TRUE, full.names = FALSE)
  dir_create(file.path(dst_dir, dirs))

  # Then copy files
  files <- dir(src_dir, recursive = TRUE)
  src_files <- file.path(src_dir, files)
  dst_files <- file.path(dst_dir, files)
  same <- map_lgl(seq_along(files), \(i) {
    same_file(src_files[[i]], dst_files[[i]])
  })

  n_new <- sum(!same)
  if (n_new == 0) {
    cli::cli_inform(c(i = "No new snapshots."))
  } else {
    cli::cli_inform(c(
      v = "Copying {n_new} new snapshots: {.file {files[!same]}}."
    ))
  }

  file.copy(src_files[!same], dst_files[!same], overwrite = TRUE)
  invisible()
}

same_file <- function(x, y) {
  file.exists(x) && file.exists(y) && hash_file(x) == hash_file(y)
}

on_gh <- function() {
  Sys.getenv("GITHUB_ACTIONS") == "true"
}
