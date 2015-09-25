trim_whitespace <- function(string) {
  vapply(string, FUN.VALUE = character(1), USE.NAMES = FALSE, function(x) {
    gsub("^[\\s\\n]*|[\\s\\n]*$", "", x, perl = TRUE)
  })
}

read_makevars <- function(pkg_path) {

  # Look for 'makevars' files in a number of locations, and parse them.
  is_windows <- Sys.info()[["sysname"]] == "Windows"

  # This won't be perfect for e.g. scripts that declare
  # variables in a configure script, but it's good for 99%
  # of users. We list the files in descending order of
  # priority.
  makevars_paths <- c(

    # Makevars.site in etc
    file.path(R.home(), "etc", "Makevars.site"),

    # ~/.R/Makevars (note: same on windows)
    file.path(Sys.getenv("HOME"), ".R", "Makevars"),

    # src/Makevars
    if (is_windows)
      file.path(pkg_path, "src", "Makevars")
    else
      file.path(pkg_path, "src", "Makevars.win")

  )

  flags <- lapply(makevars_paths, function(path) {
    if (!file.exists(path)) return(character())

    content <- paste(readLines(path), collapse = "\n")

    # Replace '\\n' with plain old space
    content <- gsub("\\\\\\s*\\n", " ", content, perl = TRUE)

    # Now split back up again -- now, each unique definition
    # should be on its own line
    splat <- strsplit(content, "\n", fixed = TRUE)[[1]]

    # Find the first '=' on each line
    splat <- grep("=", splat, fixed = TRUE, value = TRUE)
    equals_indices <- regexpr("=", splat, fixed = TRUE)

    # Split into key, value pairs
    keys <- substring(splat, 1, equals_indices - 1)
    values <- substring(splat, equals_indices + 1, nchar(splat))

    # Strip a trailing ':' off of the keys (in case of FOO := BAR)
    keys <- sub(":$", "", keys, perl = TRUE)

    # Trim off leading PKG_ qualifiers (we want to
    # respect those)
    keys <- gsub("^PKG_", "", keys, perl = TRUE)

    # Normalize the keys and values
    keys <- trim_whitespace(keys)
    values <- trim_whitespace(values)

    names(values) <- keys
    values

  })

  # Collapse the set of variables
  collapse <- function(x, y) {
    for (i in seq_along(y))
      x[[names(y)[i]]] <- y[[i]]
    x
  }

  result <- as.list(Reduce(collapse, flags))

  # If we have CXX_STD = CXX11, or "SystemRequirements: C++11",
  # make sure we put -std=c++11 in the CXXFLAGS
  DESCRIPTION <- tryCatch(
    read.dcf(file.path(pkg_path, "DESCRIPTION"), all = TRUE),
    error = function(e) NULL
  )

  SystemRequirements <- if (length(DESCRIPTION))
    trim_whitespace(DESCRIPTION[["SystemRequirements"]])

  if (identical(result[["CXX_STD"]], "CXX11") ||
      identical(SystemRequirements, "C++11"))
  {
    result[["CXXFLAGS"]] <-
      trim_whitespace(paste(result[["CXXFLAGS"]], "-std=c++11"))
  }

  result

}

parse_linking_to <- function(pkg_path) {

  if (!file.exists(file.path(pkg_path, "DESCRIPTION")))
    stop("No 'DESCRIPTION' file for directory '", basename(pkg_path), "'")

  DESCRIPTION <- read.dcf(file.path(pkg_path, "DESCRIPTION"), all = TRUE)
  LinkingTo <- DESCRIPTION$LinkingTo

  if (is.null(LinkingTo))
    return(character())

  splat <- strsplit(LinkingTo, "\\s*[,\\n]\\s*", perl = TRUE)[[1]]

  # Remove any version information
  splat <- gsub("\\s*\\(.*", "", splat)

  splat

}

test_compiled_code <- function(package, test_path, filter, verbose = FALSE) {

  pkg_path <- system.file(package = package)
  pkg_path <- gsub("/inst$", "", pkg_path)

  test_path <- file.path(pkg_path, "tests", "testthat", "cpp")

  # Get all of the C++ files in the directory
  test_files <- list.files(test_path,
                           pattern = "^test-",
                           full.names = TRUE)

  ## Generate a script that will compile an executable
  ## to run the tests.

  # Get the main.cpp wrapper
  main <- system.file(package = "testthat", "resources", "main.cpp")

  # Compile the executable
  random_string <- paste(
    sample(c(0:9, letters, LETTERS), 16, replace = TRUE), collapse = ""
  )

  bin_path <- file.path(
    tempdir(),
    paste("testthat-", package, "-bin-", random_string, sep = "")
  )

  if (file.exists(bin_path))
    stop("Directory '", bin_path, "' already exists; collision with other running tests?")

  dir.create(bin_path, recursive = TRUE)
  on.exit(unlink(bin_path, recursive = TRUE), add = TRUE)

  makevars <- read_makevars(pkg_path)

  # Try to get the compiler.
  # TODO: Handle C, Fortran?
  compiler <- makevars[["CXX"]]

  if (is.null(compiler))
    compiler <- Sys.getenv("CXX")

  if (is.null(compiler) || !nzchar(compiler))
  {
    compiler <- if (Sys.info()[["sysname"]] == "Darwin")
      "clang++"
    else
      "g++"
  }

  include_path <- system.file(package = "testthat", "include")

  linking_to_pkgs <- parse_linking_to(pkg_path)
  linking_to_include_dirs <- if (length(linking_to_pkgs))
    file.path(
      Vectorize(system.file)(package = linking_to_pkgs, "include")
    )

  include_dirs <- c(
    file.path(R.home(), "include"),
    include_path,
    linking_to_include_dirs
  )

  include_cmd <- paste("-I", shQuote(include_dirs, type = "cmd"), sep = "", collapse = " ")

  library_dirs <- c(
    file.path(R.home(), "lib")
  )

  library_dir_cmd <- paste(
    "-L",
    shQuote(library_dirs, type = "cmd"), sep = "", collapse = " "
  )

  libraries <- c("R")
  library_cmd <- paste("-l", libraries, sep = "")

  output_cmd <- paste("-o", file.path(bin_path, "testthat"))

  # TODO: Choose appropriate flags from makevars?
  cmd <- paste(
    compiler,
    include_cmd,
    library_dir_cmd,
    library_cmd,
    makevars[["CXXFLAGS"]],
    makevars[["LDFLAGS"]],
    main,
    test_files,
    output_cmd
  )

  # Compile the executable
  message("Compiling C++ unit test executable -- please wait...")
  if (verbose) {
    message("Command:\n")
    message(cmd)
  }
  system(cmd)

  # Run the executable
  message("Running C++ unit tests...")
  system(file.path(bin_path, "testthat"))

}
