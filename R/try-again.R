#' Try evaluating an expressing multiple times until it succeeds.
#'
#' @param times Maximum number of attempts.
#' @param code Code to evaluate
#' @export
#' @examples
#' third_try <- local({
#'   i <- 3
#'   function() {
#'     i <<- i - 1
#'     if (i > 0) fail(paste0("i is ", i))
#'   }
#' })
#' try_again(3, third_try())
try_again <- function(times, code) {
  while (times > 0) {
    e <- tryCatch(
      withCallingHandlers(
        {
          code
          NULL
        },
        warning = function(e) {
          if (identical(e$message, "restarting interrupted promise evaluation")) {
            invokeRestart("muffleWarning")
          }
        }
      ),
      expectation_failure = function(e) {
        e
      },
      error = function(e) {
        e
      }
    )

    if (is.null(e))
      return(invisible(TRUE))

    times <- times - 1L
  }

  stop(e)
}
