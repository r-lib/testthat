
task_q <- R6::R6Class(
  "task_q",
  public = list(
    initialize = function(concurrency = 4L) {
      private$start_workers(concurrency)
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
      private$tasks <- tibble::add_row(private$tasks, .before = before,
        id = id, idle = FALSE, state = "waiting", fun = list(fun),
        args = list(args), worker = list(NULL), result = list(NULL))
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
        private$tasks$state[topoll][pr == "ready"] <- "ready"
        private$schedule()
        ret <- private$tasks$id[private$tasks$state == "done"]
        if (is.finite(timeout)) timeout <- limit - Sys.time()
        if (length(ret) || timeout < 0) break;
      }
      ret
    },

    pop = function(timeout = 0) {
      if (is.na(done <- self$poll(timeout)[1])) return(NULL)
      row <- match(done, private$tasks$id)
      result <- private$tasks$result[[row]]
      private$tasks <- private$tasks[-row, ]
      c(result, list(task_id = done))
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

    start_workers = function(concurrency) {
      private$tasks <- tibble::tibble(
        id = character(), idle = logical(),
        state = c("waiting", "running", "ready", "done")[NULL],
        fun = list(), args = list(), worker = list(), result = list())
      for (i in seq_len(concurrency)) {
        rs <- callr::r_session$new(wait = FALSE)
        private$tasks <- tibble::add_row(private$tasks,
          id = paste0(".idle-", i), idle = TRUE, state = "running",
          fun = list(NULL), args = list(NULL), worker = list(rs),
          result = list(NULL))
      }
    },

    schedule = function() {
      ready <- which(private$tasks$state == "ready")
      if (!length(ready)) return()
      rss <- private$tasks$worker[ready]

      private$tasks$result[ready] <- lapply(rss, function(x) x$read())
      private$tasks$worker[ready] <- replicate(length(ready), NULL)
      private$tasks$state[ready] <-
        ifelse(private$tasks$idle[ready], "waiting", "done")

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
