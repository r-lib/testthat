# Geenrates a (semi-random) directory wherein compilation
# can take place, within tempdir().
cpp_compilation_tempdir <- function(package) {

  # Generate a path wherein we perform the executable compilation
  random_string <- paste(
    sample(c(0:9, letters, LETTERS), 16, replace = TRUE), collapse = ""
  )

  compilation_path <- file.path(
    tempdir(),
    paste("testthat-", package, "-bin-", random_string, sep = "")
  )

  # If this directory exists, recurse and try a new name.
  if (file.exists(compilation_path))
    return(cpp_compilation_tempdir(package))

  # Otherwise we're done.
  compilation_path
}

# Determine the compilation prefix used when compiling a file (e.g., the command
# line invocation that collects the compiler + flags when attempting to compile
# a particular file, excluding the file itself)
compilation_prefix <- function(path) {

  # Figure out the command line invocation flags we want -- parse the results
  # of 'R CMD SHLIB --dry-run'.
  R <- file.path(R.home("bin"), "R")
  cmd <- paste(shQuote(R), "CMD", "SHLIB", "--dry-run", shQuote(path))
  interned <- system(cmd, intern = TRUE)
  idx <- which(interned == "make would use")
  invocation <- interned[idx + 1]

  # Strip out any of the files passed to the compiler; we now have all the
  # flags we want.
  c_loc <- regexec(" -c ", invocation, fixed = TRUE)[[1]]
  substring(invocation, 1, c_loc)

}

test_compiled_code <- function(package, test_path, filter, verbose = FALSE) {

  ## Generate a temporary directory wherein compilation will take place.
  bin_path <- cpp_compilation_tempdir(package)
  if (file.exists(bin_path))
    stop("Directory '", bin_path, "' already exists; collision with other running tests?")

  dir.create(bin_path, recursive = TRUE)
  on.exit(unlink(bin_path, recursive = TRUE), add = TRUE)

  ## Get paths to all C++ test files.
  cpp_path <- file.path(test_path, "cpp")
  test_files <- list.files(cpp_path,
                           pattern = "^test-",
                           full.names = TRUE)

  # Bail if we have no files to test
  if (!length(test_files))
    return()

  ## Generate a script that will compile an executable
  ## to run the tests.

  # Get the main.cpp wrapper.
  main_cpp <- system.file(package = "testthat", "resources", "main.cpp")
  prefix <- compilation_prefix(main_cpp)

  ## Include testthat header.
  testthat_include_path <- file.path(
    system.file(package = "testthat", "include")
  )

  compilation_cmd <- paste(
    prefix,
    paste("-I", shQuote(testthat_include_path), sep = ""),
    shQuote(test_files),
    shQuote(main_cpp),
    paste("-o", shQuote(file.path(bin_path, "testthat")))
  )

  # Compile the executable
  message("Compiling C++ unit test executable -- please wait...")
  if (verbose) {
    message("Command:\n")
    message(compilation_cmd)
  }

  result <- system(compilation_cmd)
  if (result)
    stop(sprintf("compilation failed (exit status %s)", result))

  # Run the executable
  run_cmd <- paste(
    shQuote(file.path(bin_path, "testthat")),
    "--reporter",
    "console"
  )

  result <- system(run_cmd)

}
