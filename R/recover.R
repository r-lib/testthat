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
recover2 <- function(start_frame = 1L, end_frame = sys.nframe())
{
  calls <- sys.calls()

  if (.isMethodsDispatchOn()) {
    tState <- tracingState(FALSE)
    on.exit(tracingState(tState))
  }
  from <- min(end_frame, length(calls))

  calls <- limitedLabels(calls[start_frame:from])
  repeat {
    which <- menu(calls, title = "\nEnter a frame number, or 0 to exit  ")
    if (which) {
      frame <- sys.frame(start_frame - 2 + which)
      browse_frame(frame, skip = 7 - which)
    }
    else break
  }
}

browse_frame <- function(frame, skip) {
  eval(substitute(browser(skipCalls = skip), list(skip = skip)),
       envir = frame)
}
