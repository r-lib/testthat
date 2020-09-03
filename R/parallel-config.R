find_parallel <- function(path, load_package = "source", package = NULL) {
  # Make sure we get the local package package if not "installed"
  if (load_package != "installed") package <- NULL
  desc <- find_description(path, package)
  if (is.null(desc)) {
    return(FALSE)
  }

  identical(toupper(desc$get_field("Config/testthat/parallel", "")), "TRUE")
}
