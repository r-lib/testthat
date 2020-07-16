
# See https://www.tidyverse.org/blog/2019/09/callr-task-q/
# for a detailed explanation on how the task queue works.
#
# Changes in this version, compared to the blog post:
# * We use data frames instead of tibbles. This requires some caution
#   and the df_add_row() function below.
# * We do not collect the results in a result column, because we
#   just return them immediately, as we get them.
# * We do not need a pop() method, because poll() will just return
#   every message.

PROCESS_DONE    <- 200L
PROCESS_STARTED <- 201L
PROCESS_MSG     <- 301L
PROCESS_EXITED  <- 500L
PROCESS_CRASHED <- 501L
PROCESS_CLOSED  <- 502L
PROCESS_FAILURES <- c(PROCESS_EXITED, PROCESS_CRASHED, PROCESS_CLOSED)

task_q <- R6::R6Class(
  "task_q",
  public = list(
    initialize = function(concurrency = 4L, ...) {
      private$start_workers(concurrency, ...)
      invisible(self)
    },
    list_tasks = function() private$tasks,
    get_num_waiting = function()
      sum(!private$tasks$idle & private$tasks$state == "waiting"),
    get_num_running = function()
      sum(!private$tasks$idle & private$tasks$state == "running"),
    get_num_done = function() sum(private$tasks$state == "done"),
    is_idle = function() sum(!private$tasks$idle) == 0,

    push = function(fun, args = list(), id = NULL) {
      if (is.null(id)) id <- private$get_next_id()
      if (id %in% private$tasks$id) stop("Duplicate task id")
      before <- which(private$tasks$idle)[1]
      private$tasks <- df_add_row(private$tasks, .before = before,
        id = id, idle = FALSE, state = "waiting", fun = I(list(fun)),
        args = I(list(args)), worker = I(list(NULL))
      )
      private$schedule()
      invisible(id)
    },

    poll = function(timeout = 0) {
      limit <- Sys.time() + timeout
      as_ms <- function(x)
        if (x==Inf) -1 else as.integer(as.double(x, "secs") * 1000)
      repeat{
        topoll <- which(private$tasks$state == "running")
        conns <- lapply(
          private$tasks$worker[topoll],
          function(x) x$get_poll_connection())
        pr <- processx::poll(conns, as_ms(timeout))
        ready <- topoll[pr == "ready"]
        results <- lapply(ready, function(i) {
          msg <- private$tasks$worker[[i]]$read()
          ## TODO: why can this be NULL?
          if (is.null(msg) || msg$code == PROCESS_MSG) {
            private$tasks$state[[i]] <- "running"
          } else if (msg$code == PROCESS_STARTED) {
            private$tasks$state[[i]] <- "ready"
            msg <- NULL
          } else if (msg$code == PROCESS_DONE) {
            private$tasks$state[[i]] <- "ready"
          } else if (msg$code %in% PROCESS_FAILURES) {
            file <- private$tasks$args[[i]][[1]]
            abort(
              paste0("testthat subprocess exited in file `", file, "`"),
              test_file = file,
              parent = msg$err,
              class = c("testthat_process_error", "testthat_error")
            )
          } else {
            file <- private$tasks$args[[i]][[1]]
            errmsg <- paste0(
              "unknown message from testthat subprocess: ", msg$code, ", ",
              "in file `", file, "`"
            )
            abort(
              errmsg,
              test_file = file,
              class = c("testthat_process_error", "testthat_error")
            )
          }
          msg
        })
        results <- results[! vapply(results, is.null, logical(1))]

        private$schedule()
        if (is.finite(timeout)) timeout <- limit - Sys.time()
        if (length(results) || timeout < 0) break;
      }
      results
    }
  ),

  private = list(
    tasks = NULL,
    next_id = 1L,
    get_next_id = function() {
      id <- private$next_id
      private$next_id <- id + 1L
      paste0(".", id)
    },

    start_workers = function(concurrency, ...) {
      nl <- I(replicate(concurrency, NULL))
      private$tasks <- data.frame(
        stringsAsFactors = FALSE,
        id = paste0(".idle-", seq_len(concurrency)),
        idle = TRUE,
        state = "running",
        fun = nl,
        args = nl,
        worker = nl)
      rsopts <- callr::r_session_options(...)
      for (i in seq_len(concurrency)) {
        rs <- callr::r_session$new(rsopts, wait = FALSE)
        private$tasks$worker[[i]] <- rs
      }
    },

    schedule = function() {
      ready <- which(private$tasks$state == "ready")
      if (!length(ready)) return()
      rss <- private$tasks$worker[ready]

      private$tasks$worker[ready] <- replicate(length(ready), NULL)
      private$tasks$state[ready] <-
        ifelse(private$tasks$idle[ready], "waiting", "done")
      done <- which(private$tasks$state == "done")
      if (any(done)) private$tasks <- private$tasks[-done, ]

      waiting <- which(private$tasks$state == "waiting")[1:length(ready)]
      private$tasks$worker[waiting] <- rss
      private$tasks$state[waiting] <-
        ifelse(private$tasks$idle[waiting], "ready", "running")
      lapply(waiting, function(i) {
        if (! private$tasks$idle[i]) {
          private$tasks$worker[[i]]$call(private$tasks$fun[[i]],
                                         private$tasks$args[[i]])
        }
      })
    }
  )
)

df_add_row <- function(df, ..., .before = NULL) {
  before <- .before %||% (nrow(df) + 1L)
  row <- data.frame(stringsAsFactors = FALSE, ...)
  if (before > nrow(df)) {
    rbind(df, row)
  } else if (before <= 1L) {
    rbind(row, df)
  } else {
    rbind(df[1:(before-1), ], row, df[before:nrow(df), ])
  }
}

silence_r_cmd_check <- function() callr::r_session
