colourise <- function(text, as = c("success", "skip", "warning", "failure", "error")) {
  colour_config <- getOption("testthat.use_colours", TRUE)
  if (!isTRUE(colour_config)) {
    return(text)
  }

  crayon::style(text, testthat_style(as))
}

testthat_style <- function(type = c("success", "skip", "warning", "failure", "error")) {
  type <- match.arg(type)

  c(
    success = "green",
    skip = "blue",
    warning = "magenta",
    failure = "red",
    error = "red"
  )[[type]]
}
