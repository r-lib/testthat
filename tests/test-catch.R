library(testthat)

local({

  # Disable test on Windows, pending devtools
  # compatibility with new toolchain
  if (Sys.info()[["sysname"]] == "Windows")
    return()

  if (!requireNamespace("devtools", quietly = TRUE))
    return()

  devel <- try(devtools::has_devel(), silent = TRUE)
  if (!isTRUE(devel))
    return()

  quietly <- function(expr) {
    suppressMessages(capture.output(result <- expr))
    result
  }

  owd <- setwd(tempdir())
  on.exit(setwd(owd), add = TRUE)

  pkgName <- "testthatclient"
  pkgPath <- file.path(tempdir(), pkgName)
  libPath <- file.path(tempdir(), "rlib")
  if (!utils::file_test("-d", libPath))
    dir.create(libPath)
  .libPaths(c(libPath, .libPaths()))

  on.exit({
    unlink(pkgPath, recursive = TRUE)
    unlink(libPath, recursive = TRUE)
  }, add = TRUE)

  quietly(devtools::create(pkgPath))
  quietly(testthat::use_catch(pkgPath))

  cat("LinkingTo: testthat",
      file = file.path(pkgPath, "DESCRIPTION"),
      append = TRUE,
      sep = "\n")

  cat(
    sprintf("useDynLib(%s)", pkgName),
    file = file.path(pkgPath, "NAMESPACE"),
    append = TRUE,
    sep = "\n"
  )

  quietly(devtools::install(pkgPath, quick = TRUE, quiet = TRUE))

  library(pkgName, character.only = TRUE)
  stopifnot(quietly(.Call("run_testthat_tests", PACKAGE = "testthatclient")))

  devtools::unload(pkgName)

})
