find_parallel <- function(path, load_package = "source", package = NULL) {
  # If env var is set, then use that
  parenv <- Sys.getenv("TESTTHAT_PARALLEL", NA_character_)
  if (!is.na(parenv)) {
    if (toupper(parenv) == "TRUE") return(TRUE)
    if (toupper(parenv) == "FALSE") return(FALSE)
    abort("`TESTTHAT_PARALLEL` must be `TRUE` or `FALSE`")
  }

  # Make sure we get the local package package if not "installed"
  if (load_package != "installed") package <- NULL
  desc <- find_description(path, package)
  if (is.null(desc)) {
    return(FALSE)
  }

  par <- identical(
    toupper(desc$get_field("Config/testthat/parallel", default = "FALSE")),
    "TRUE"
  )

  if (par) {
    ed <- as.integer(desc$get_field("Config/testthat/edition", default = 2L))
    if (ed < 3) {
      inform("Running tests in parallel requires the 3rd edition")
      par <- FALSE
    }
  }

  par
}
