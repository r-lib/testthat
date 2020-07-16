#' Test reporter: start recovery.
#'
#' This reporter will call a modified version of [recover()] on all
#' broken expectations.
#'
#' @export
#' @family reporters
DebugReporter <- R6::R6Class("DebugReporter",
  inherit = Reporter,
  public = list(
    add_result = function(context, test, result) {
      if (!expectation_success(result) && !is.null(result$start_frame)) {
        if (sink_number() > 0) {
          sink(self$out)
          on.exit(sink(), add = TRUE)
        }

        recover2(
          start_frame = result$start_frame,
          end_frame = result$end_frame
        )
      }
    }
  )
)

sink_number <- function() {
  sink.number(type = "output")
}

# recover2 ----------------------------------------------------------------

#  Modeled after utils::recover(), which is
#  part of the R package, https://www.R-project.org
#
#  Copyright (C) 1995-2016 The R Core Team
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  A copy of the GNU General Public License is available at
#  https://www.R-project.org/Licenses/
recover2 <- function(start_frame = 1L, end_frame = sys.nframe()) {
  calls <- sys.calls()

  if (.isMethodsDispatchOn()) {
    tState <- tracingState(FALSE)
    on.exit(tracingState(tState))
  }
  from <- min(end_frame, length(calls))

  calls <- calls[start_frame:from]

  if (rlang::is_false(peek_option("testthat_format_srcrefs"))) {
    calls <- lapply(calls, zap_srcref)
  }
  calls <- utils::limitedLabels(calls)

  repeat {
    which <- show_menu(calls, "\nEnter a frame number, or 0 to exit  ")
    if (which) {
      frame <- sys.frame(start_frame - 2 + which)
      browse_frame(frame, skip = 7 - which)
    }
    else {
      break
    }
  }
}

# Helpers -----------------------------------------------------------------

zap_srcref <- function(x) {
  attr(x, "srcref") <- NULL
  x
}

show_menu <- function(choices, title = NULL) {
  utils::menu(choices, title = title)
}

browse_frame <- function(frame, skip) {
  eval(
    substitute(browser(skipCalls = skip), list(skip = skip)),
    envir = frame
  )
}
