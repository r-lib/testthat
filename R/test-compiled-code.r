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

test_compiled_code <- function(package, test_path, filter) {

  pkg_path <- system.file(package = package)
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
  random_string <- paste(sample(c(0:9, letters, LETTERS), 16, replace = TRUE), collapse = "")
  bin_path <- file.path(
    tempdir(),
    paste("testthat-bin-", random_string, sep = "")
  )

  if (file.exists(bin_path))
    stop("Directory '", bin_path, "' already exists; collision with other running tests?")

  dir.create(bin_path, recursive = TRUE)
  on.exit(unlink(bin_path, recursive = TRUE), add = TRUE)

  # TODO: choose appropriate compiler?
  compiler <- if (Sys.info()[["sysname"]] == "Darwin")
    "clang++"
  else
    "gcc"

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

  library_dir_cmd <- paste("-L", shQuote(library_dirs, type = "cmd"), sep = "", collapse = " ")

  libraries <- c("R")
  library_cmd <- paste("-l", libraries, sep = "")

  output_cmd <- paste("-o", file.path(bin_path, "testthat"))

  cmd <- paste(
    compiler,
    include_cmd,
    library_dir_cmd,
    library_cmd,
    main,
    test_files,
    output_cmd
  )

  # Compile the executable
  system(cmd)

  # Run the executable
  system(file.path(bin_path, "testthat"))

}
