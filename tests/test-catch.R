library(testthat)

local({
  if (!requireNamespace("usethis", quietly = TRUE)) {
    return()
  }

  quietly <- function(expr) {
    suppressMessages(capture_output(result <- expr))
    result
  }

  perform_test <- function(pkgName, catchEnabled) {
    owd <- setwd(tempdir())
    on.exit(setwd(owd), add = TRUE)

    pkgPath <- file.path(tempdir(), pkgName)
    libPath <- file.path(tempdir(), "rlib")
    if (!utils::file_test("-d", libPath)) {
      dir.create(libPath)
    }
    .libPaths(c(libPath, .libPaths()))

    on.exit(
      {
        unlink(pkgPath, recursive = TRUE)
        unlink(libPath, recursive = TRUE)
      },
      add = TRUE
    )

    quietly(usethis::create_package(pkgPath, open = FALSE))
    quietly(testthat::use_catch(pkgPath))

    cat(
      "LinkingTo: testthat",
      file = file.path(pkgPath, "DESCRIPTION"),
      append = TRUE,
      sep = "\n"
    )

    cat(
      sprintf("useDynLib(%s, .registration=TRUE)", pkgName),
      file = file.path(pkgPath, "NAMESPACE"),
      append = TRUE,
      sep = "\n"
    )

    if (!catchEnabled) {
      isWindows <- Sys.info()[["sysname"]] == "Windows"
      makevarsPath <- file.path(
        pkgPath,
        "src",
        if (isWindows) "Makevars.win" else "Makevars"
      )

      cat(
        "PKG_CPPFLAGS = -DTESTTHAT_DISABLED",
        file = makevarsPath,
        sep = "\n"
      )
    }

    install.packages(pkgs = pkgPath, repos = NULL, type = "source")
    library(pkgName, character.only = TRUE)
    stopifnot(.Call("run_testthat_tests", FALSE, PACKAGE = pkgName))
    pkgload::unload(pkgName)
  }

  withr::local_envvar(R_TESTS = '')
  perform_test("testthatclient1", TRUE)
  perform_test("testthatclient2", FALSE)
})
