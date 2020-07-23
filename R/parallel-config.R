find_parallel <- function(path, package = NULL) {
  desc <- find_description(path, package)
  if (is.null(desc)) {
    return(FALSE)
  }

  identical(toupper(desc$get_field("Config/testthat/parallel", "")), "TRUE")
}
