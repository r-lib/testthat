parse_linking_to <- function(package) {

  if (!file.exists(file.path(package$path, "DESCRIPTION")))
    stop("No 'DESCRIPTION' file for package '", package$package, "'")

  DESCRIPTION <- read.dcf(file.path(package$path, "DESCRIPTION"), all = TRUE)
  LinkingTo <- DESCRIPTION$LinkingTo

  if (is.null(LinkingTo))
    return(character())

  splat <- strsplit(LinkingTo, "\\s*[,\\n]\\s*", perl = TRUE)[[1]]

  s# Remove any version information
  splat <- gsub("\\s*\\(.*", "", splat)

  splat

}

test_compiled_code <- function(package) {

  pkg_path <- package$path
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
  bin_path <- file.path(package$path, "bin")
  if (!file.exists(bin_path))
    dir.create(bin_path)

  # TODO: choose appropriate compiler?
  compiler <- if (Sys.info()[["sysname"]] == "Darwin")
    "clang++"
  else
    "gcc"

  include_path <- system.file(package = "testthat", "include")

  linking_to_pkgs <- parse_linking_to(package)
  linking_to_include_dirs <- file.path(
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
