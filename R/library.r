library_if_available <- function(package) {
  package <- deparse(substitute(package))
  
  suppressWarnings(suppressPackageStartupMessages(
    require(package, quietly = TRUE, warn.conflicts = FALSE)
  ))
}