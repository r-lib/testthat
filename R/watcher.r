#' Watch a directory for changes (additions, deletions & modifications).
#'
#' @param path character vector of paths to watch.  Omit trailing backslash.
#' @param pattern file pattern passed to \code{\link{dir}}
#' @param callback function called everytime a change occurs.  It should
#'   have three parameters: added, deleted, modified, and should return
#'   TRUE to keep watching, or FALSE to stop.  
watch <- function(path, callback, pattern = NULL) {
  
  prev <- dir(path, pattern, full.names = TRUE)
  prev_changed <- file.info(prev)$mtime
  names(prev_changed) <- prev

  while(TRUE) {
    Sys.sleep(1)

    curr <- dir(path, pattern, full.names = TRUE)
    curr_changed <- file.info(curr)$mtime
    names(curr_changed) <- curr

    added <- setdiff(curr, prev)
    deleted <- setdiff(prev, curr)

    same <- intersect(curr, prev)
    modified <- curr[curr_changed[same] > prev_changed[same]]
    
    if (length(added) + length(deleted) + length(modified) > 0) {
      keep_going <- callback(added, deleted, modified)
      if (!keep_going) return(invisible())
    }

    prev <- curr
    prev_changed <- curr_changed
  }  
}
