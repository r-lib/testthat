
testthat_colours <- list(
  passed = crayon::green,
  skipped = crayon::yellow,
  error = crayon::red
)

#' @export
colourise <- function(text, as = c("passed", "skipped", "error"), fg, bg) {
  if (!missing(fg)) warning("The fg parameter to testthat::colourise is deprecated.", call. = FALSE)
  if (!missing(bg)) warning("The bg parameter to testthat::colourise is deprecated.", call. = FALSE)
  colour_config <- getOption("testthat.use_colours", TRUE)
  if (!isTRUE(colour_config)) return(text)
  as <- match.arg(as)
  testthat_colours[[as]](text)
}

