#' Watch a directory for changes (additions, deletions & modifications).
#'
#' @param path character vector of paths to watch.  Omit trailing backslash.
#' @param pattern file pattern passed to \code{\link{dir}}
#' @param callback function called everytime a change occurs.  It should
#'   have three parameters: added, deleted, modified, and should return
#'   TRUE to keep watching, or FALSE to stop. 
#' @param hashes are more accurate at detecting changes, but are slower for 
#'   large files.  When FALSE, uses modification time stamps 
watch <- function(path, callback, pattern = NULL, hash = TRUE) {
  
  prev <- dir_state(path, pattern, hash = hash)

  while(TRUE) {
    Sys.sleep(1)
    
    curr <- dir_state(path, pattern, hash = hash)
    changes <- compare_state(curr, prev)
    
    if (changes$n > 0) {
      # cat("C")
      keep_going <- with(changes, callback(added, deleted, modified))
      if (!keep_going) return(invisible())
    } else {
      # cat(".")
      
    }

    prev <- curr
  }  
}

dir_state <- function(path, pattern = NULL, hash = TRUE) {
  files <- dir(path, pattern, full.names = TRUE)
  
  if (hash) {
    sapply(files, digest, file = TRUE)    
  } else {
    setNames(file.info(files)$mtime, files)
  }
}

compare_state <- function(old, new) {
  added <- setdiff(names(new), names(old))
  deleted <- setdiff(names(old), names(new))

  same <- intersect(names(old), names(new))
  modified <- names(new)[new[same] != old[same]]
  
  n <- length(added) + length(deleted) + length(modified)
  
  list(n = n, added = added, deleted = deleted, modified = modified)
}
