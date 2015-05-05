# fix the check NOTE:Namespace in Imports field not imported from: 'crayon'
#' @importFrom crayon green yellow red
testthat_colours <- list(
  passed = green,
  skipped = yellow,
  error = red
)

colourise <- function(text, as = c("passed", "skipped", "error")) {
  colour_config <- getOption("testthat.use_colours", TRUE)
  if (!isTRUE(colour_config)) return(text)
  as <- match.arg(as)
  testthat_colours[[as]](text)
}
