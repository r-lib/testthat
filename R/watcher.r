# Should watch both code and test directories.
# 
# To start with, should re-source everything when either changes.  Guarantees
# that everything will be up-to-date.  (Ideally should also clear environment
# and unload package, so it's just like a clean R session). Time loading a 
# separate R process and executing tests
#
# The next step is to figure out which tests to run based on the changed code
# and tests.  Would require substantially more parsing of R code (and use of 
# code tools), but would reap substantial savings for large amounts of code.
# This might be better as part of a code coverage set of tools.
# library(codetools)
# findGlobals(findGlobals, FALSE)$functions
# 
# Autotest reruns failing tests until they pass, and then reruns global test
# suite.  Keyboard shortcut to rerun entire suite
# 
# Colour coding?
# 
# Should always give a succinct summary of the file changes, followed by any 
# changes in the test status.  Separate subsequent runs with -----------
#
#

watch <- function(path, callback) {
  
  prev <- dir()
  prev_changed <- file.info(prev)$mtime
  names(prev_changed) <- prev

  while(TRUE) {
    Sys.sleep(1)

    curr <- dir()
    curr_changed <- file.info(curr)$mtime
    names(curr_changed) <- curr

    added <- setdiff(curr, prev)
    if (length(added) > 0)
      cat("Added:   ", paste(added, collapse = ", "), "\n")
    deleted <- setdiff(prev, curr)
    if (length(deleted) > 0)
      cat("Deleted: ", paste(deleted, collapse = ", "), "\n")

    same <- intersect(curr, prev)
    modified <- curr_changed[same] > prev_changed[same]

    if (any(modified)) 
      cat("Changed: ", same[modified], "\n")

    prev <- curr
    prev_changed <- curr_changed
  }  
}