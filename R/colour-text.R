colourise <- function(text, as = c("success", "skip", "warning", "failure", "error")) {
  colour_config <- getOption("testthat.use_colours", TRUE)
  if (!isTRUE(colour_config)) {
    return(text)
  }

  as <- match.arg(as)

  testthat_colours <- list(
    success = crayon::green,
    skip = crayon::blue,
    warning = crayon::magenta,
    failure = crayon::red,
    error = crayon::red
  )
  testthat_colours[[as]](text)
}
