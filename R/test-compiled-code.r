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

test_compiled_code <- function(test_path, filter, verbose = FALSE) {

  ## Get test files -- all files with '.cc' or '.cpp' prefix in the
  ## tests folder.
  test_files <- list.files(
    test_path,
    pattern = "^test.*\\.(?:cc|cpp)$",
    full.names = TRUE
  )

  # Bail if we have no files to test
  if (!length(test_files))
    return()

  ## Generate a temporary directory wherein compilation will take place.
  compilation_path <- tempfile("testthat-compiled-tests")

  if (file.exists(compilation_path))
    stop("Directory '", compilation_path, "' already exists; collision with other running tests?")

  dir.create(compilation_path, recursive = TRUE)
  on.exit(unlink(compilation_path, recursive = TRUE), add = TRUE)

  # Move to the temporary compilation path.
  owd <- getwd()
  setwd(compilation_path)
  on.exit(setwd(owd), add = TRUE)

  ## Generate a script that will compile an executable
  ## to run the tests.

  # Copy in any Makevars files, if they exist. This allows R CMD SHLIB to
  # properly use those as it would when compiling 'regular' C++ files in the
  # 'src/' directory.
  pkg_path <- get_pkg_path(test_path)

  makevars_path <- if (Sys.info()[["sysname"]] == "Windows")
    file.path(pkg_path, "src", "Makevars.win")
  else
    file.path(pkg_path, "src", "Makevars")

  if (file.exists(makevars_path))
    file.copy(makevars_path, file.path(compilation_path, basename(makevars_path)))

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
    paste("-o", shQuote(file.path(compilation_path, "testthat")))
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
    shQuote(file.path(compilation_path, "testthat")),
    "--reporter",
    "console"
  )

  result <- system(run_cmd)

}
