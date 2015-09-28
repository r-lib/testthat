# Determine the compilation prefix used when compiling a file (e.g., the command
# line invocation that collects the compiler + flags when attempting to compile
# a particular file, excluding the file itself)
compilation_prefix <- function(path) {

  if (!file.exists(path))
    stop("no file at path '", path, "'")

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

  pkg_path <- get_pkg_path(test_path)

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

  ## Copy over the 'src/Makevars' file if it exists (implies we're running package tests)
  makevars_path <- if (Sys.info()[["sysname"]] == "Windows")
    file.path(pkg_path, "src", "Makevars.win")
  else
    file.path(pkg_path, "src", "Makevars")

  if (length(makevars_path) && file.exists(makevars_path))
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
  cat("Compiling C++ unit test executable -- please wait...\n")
  if (verbose) {
    cat("Command:\n")
    cat(compilation_cmd)
    cat("\n")
  }

  result <- system(compilation_cmd)
  if (result)
    stop(sprintf("compilation failed (exit status %s)", result))

  # Run the executable twice -- once to get XML output, and another time to
  # print nicely to console.
  executable <- file.path(compilation_path, "testthat")

  run_console_cmd <- paste(shQuote(executable), "--reporter console")
  run_xml_cmd <- paste(shQuote(executable), "--reporter xml")

  suppressWarnings(system(run_console_cmd))
  output <- suppressWarnings(system(run_xml_cmd, intern = TRUE))

  # Remove extraneous whitespace and paste
  cleaned <- paste(trim_whitespace(output), collapse = "")
  root <- try(xml2::read_xml(paste(cleaned, collapse = "")), silent = TRUE)

  if (inherits(root, "try-error"))
    stop("failed to parse Catch unit test output")

  ## Extract results into an intermediate form before we turn it into
  ## acceptable output for testthat.
  test_cases <- xml2::xml_children(xml2::xml_children(root)[[1]])
  results <- lapply(head(test_cases, n = -1L), function(case) {
    name_attr <- xml2::xml_attr(case, "name")
    pipe_index <- regexec(" | ", name_attr, fixed = TRUE)[[1]]
    context <- trim_whitespace(substring(name_attr, 1, pipe_index - 1))
    path <- substring(name_attr, pipe_index + 3)
    nodes <- xml2::xml_children(case)
    lapply(head(nodes, n = -1L), function(section) {
      name <- xml2::xml_attr(section, "name")
      children <- xml2::xml_children(section)
      overall <- children[[length(children)]]
      passed <- xml2::xml_attr(overall, "failures") == "0"
      list(
        context = context,
        section = name,
        path = path,
        expectation = expectation(
          passed = passed,
          failure_msg = paste(name, "is not true"),
          success_msg = name
        )
      )
    })
  })

  unlisted <- unlist(results, recursive = FALSE)

  paths <- unique(unlist(lapply(unlisted, "[[", "path")))

  collected <- lapply(paths, function(path) {
    matches <- unlist(lapply(unlisted, function(el) el$path == path))
    unlisted[matches]
  })

  ## Now, within each list element, separate by context.
  joined <- lapply(collected, function(el) {
    contexts <- unique(unlist(lapply(el, "[[", "context")))
    testthat_results(lapply(contexts, function(context) {
      matches <- unlist(lapply(el, function(e) e$context == context))
      items <- el[matches]
      if (!length(items)) return(list())
      first <- items[[1]]
      list(
        file = first$path,
        context = first$context,
        test = first$section,
        user = 0,
        system = 0,
        real = 0,
        results = lapply(items, "[[", "expectation")
      )
    }))
  })

  joined

}
