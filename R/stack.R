# Source: https://github.com/rstudio/shiny/blob/master/R/stack.R
# License: GPL-3
# Relicensed a MIT with permission.

# A Stack object backed by a list. The backing list will grow or shrink as
# the stack changes in size.
Stack <- R6Class(
  'Stack',
  portable = TRUE,
  class = FALSE,
  public = list(

    initialize = function(init = 20L) {
      # init is the initial size of the list. It is also used as the minimum
      # size of the list as it shrinks.
      private$stack <- vector("list", init)
      private$init <- init
      private$count <- 0L
    },

    push = function(..., .list = NULL) {
      args <- c(list(...), .list)
      new_size <- private$count + length(args)

      # Grow if needed; double in size
      while (new_size > length(private$stack)) {
        private$stack[length(private$stack) * 2L] <- list(NULL)
      }
      private$stack[private$count + seq_along(args)] <- args
      private$count <- new_size

      invisible(self)
    },

    size = function() {
      private$count
    },

    # Return the entire stack as a list, where the first item in the list is the
    # oldest item in the stack, and the last item is the most recently added.
    as_list = function() {
      private$stack[seq_len(private$count)]
    }
  ),

  private = list(
    stack = NULL,   # A list that holds the items
    count = 0L,     # Current number of items in the stack
    init = 20L      # Initial and minimum size of the stack
  )
)
