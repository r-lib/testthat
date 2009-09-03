# Autotest watches both code and test directories for changes.
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
# Should always give a succinct summary of the file changes, followed by any 
# changes in the test status.  Separate subsequent runs with -----------
#
#

auto_test <- function(code_path, test_path) {
  # Start by loading all code and running all tests
  source_dir(code_path)
  test_dir(test_path)
  
  # Next set up watcher to monitor changes
  watcher <- function(added, deleted, modified) {
    changed <- c(added, modified)
    tests <- changed[starts_with(changed, test_path)]
    code <- changed[starts_with(changed, code_path)]

    # If test changes, rerun just that test
    cat("Changed tests: ", paste(basename(tests), collapse = ", "))
    # If code changes, rerun all tests
    cat("Changed code: ", paste(basename(code), collapse = ", "))
    
    TRUE
  }
  watch(c(code_path, test_path), watcher)
  
}

starts_with <- function(string, prefix) {
  substr(string, 1, length(prefix)) == prefix
}