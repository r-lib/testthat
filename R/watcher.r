#' Watch a directory for changes (additions, deletions & modifications).
#'
#' This is used to power the \code{\link{auto_test}} and 
#' \code{link{auto_test_package}} functions which are used to rerun tests 
#' whenever source code changes.
#' 
#' Use Ctrl + break (windows), Esc (mac gui) or Ctrl + C (command line) to
#' stop the watcher.
#' 
#' @param path character vector of paths to watch.  Omit trailing backslash.
#' @param pattern file pattern passed to \code{\link{dir}}
#' @param callback function called everytime a change occurs.  It should
#'   have three parameters: added, deleted, modified, and should return
#'   TRUE to keep watching, or FALSE to stop. 
#' @param hash hashes are more accurate at detecting changes, but are slower
#'   for large files.  When FALSE, uses modification time stamps 
#' @export
watch <- function(path, callback, pattern = NULL, hash = TRUE) {
  
  prev <- dir_state(path, pattern, hash = hash)

  while(TRUE) {
    Sys.sleep(1)
    
    curr <- dir_state(path, pattern, hash = hash)
    changes <- compare_state(prev, curr)
    
    if (changes$n > 0) {
      # cat("C")
      keep_going <- TRUE
      try(keep_going <- with(changes, callback(added, deleted, modified)))
      
      if (!keep_going) return(invisible())
    } else {
      # cat(".")
      
    }

    prev <- curr
  } 
}

#' Capture the state of a directory.
#'
#' @param path path to directory
#' @param pattern regular expression with which to filter files
#' @param hash use hash (slow but accurate) or time stamp (fast but less 
#'   accurate)
#' @keywords internal
dir_state <- function(path, pattern = NULL, hash = TRUE) {
  files <- dir(path, pattern, full.names = TRUE)
  
  if (hash) {
    sapply(files, digest::digest, file = TRUE)    
  } else {
    setNames(file.info(files)$mtime, files)
  }
}

#' Compare two directory states.
#' 
#' @param old previous state
#' @param new current state
#' @return list containing number of changes and files which have been 
#'   \code{added}, \code{deleted} and \code{modified}
#' @keywords internal
compare_state <- function(old, new) {
  added <- setdiff(names(new), names(old))
  deleted <- setdiff(names(old), names(new))

  same <- intersect(names(old), names(new))
  modified <- names(new)[new[same] != old[same]]
  
  n <- length(added) + length(deleted) + length(modified)
  
  list(n = n, added = added, deleted = deleted, modified = modified)
}
