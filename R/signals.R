.__HANDLERS__. <- new.env(parent = emptyenv())

signal_handlers_get <- function(signal) {
  if (!exists(signal, envir = .__HANDLERS__.))
    assign(signal, new.env(parent = emptyenv()), envir = .__HANDLERS__.)
  get(signal, envir = .__HANDLERS__.)
}

signal_fire <- function(signal, ...) {
  handlers <- signal_handlers_get(signal)
  for (id in objects(handlers, all.names = TRUE)) {
    handler <- get(id, envir = handlers)
    try(handler(...), silent = TRUE)
  }
}

signal_on <- function(signal, fn) {
  handlers <- signal_handlers_get(signal)
  id <- digest::digest(fn)
  handlers[[id]] <- fn
  id
}

signal_off <- function(signal, id) {
  handlers <- signal_handlers_get(signal)
  handlers[[id]] <- NULL
}
