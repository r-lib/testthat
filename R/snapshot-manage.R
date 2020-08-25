#' Snapshot management
#'
#' * `snapshot_accept()` accepts all modified snapshots.
#' * `snapshot_review()` opens a Shiny app that shows a visual diff of each
#'    modified snapshot. This is particularly useful for whole file snapshots
#'    created by `expect_snapshot_file()`.
#'
#' @param files Optionally, filter affects to snapshots from specified test
#'   files. Can be full path to test (`tests/testthat/test-foo.R`), file name
#'   (`test-foo.R`), or test name (`foo`).
#' @param path Path to tests.
#' @export
snapshot_accept <- function(files = NULL, path = "tests/testthat") {
  changed <- snapshot_meta(files, path)
  if (nrow(changed) == 0) {
    inform("No snapshots to update")
    return(invisible())
  }

  inform(c("Updating snapshots:", basename(changed$cur)))
  unlink(changed$cur)
  file.rename(changed$new, changed$cur)

  rstudio_tickle()
  invisible()
}

#' @rdname snapshot_accept
#' @export
snapshot_review <- function(files = NULL, path = "tests/testthat") {
  check_installed("shiny", "snapshot_review()")
  check_installed("diffviewer", "snapshot_review()")

  changed <- snapshot_meta(files, path)
  if (nrow(changed) == 0) {
    inform("No snapshots to update")
    return(invisible())
  }

  review_app(changed$name, changed$cur, changed$new)
  rstudio_tickle()
  invisible()
}

review_app <- function(name, old_path, new_path) {
  stopifnot(
    length(name) == length(old_path),
    length(old_path) == length(new_path)
  )

  n <- length(name)
  case_index <- stats::setNames(seq_along(name), name)
  handled <- rep(FALSE, n)

  ui <- shiny::fluidPage(style = "margin: 0.5em",
    shiny::fluidRow(style = "display: flex",
      shiny::div(style = "flex: 1 1",
        shiny::selectInput("cases", NULL, case_index, width = "100%")
      ),
      shiny::div(class = "btn-group", style = "margin-left: 1em; flex: 0 0 auto",
        shiny::actionButton("skip", "Skip"),
        shiny::actionButton("accept", "Accept", class = "btn-success"),
      )
    ),
    shiny::fluidRow(
      diffviewer::visual_diff_output("diff")
    )
  )
  server <- function(input, output, session) {
    i <- shiny::reactive(as.numeric(input$cases))
    output$diff <- diffviewer::visual_diff_render({
      diffviewer::visual_diff(old_path[[i()]], new_path[[i()]])
    })

    # Handle buttons - after clicking update move input$cases to next case,
    # and remove current case (for accept/reject). If no cases left, close app
    shiny::observeEvent(input$reject, {
      inform(paste0("Rejecting snapshot: '", new_path[[i()]], "'"))
      unlink(new_path[[i()]])
      update_cases()
    })
    shiny::observeEvent(input$accept, {
      inform(paste0("Accepting snapshot: '", old_path[[i()]], "'"))
      file.rename(new_path[[i()]], old_path[[i()]])
      update_cases()
    })
    shiny::observeEvent(input$skip, {
      i <- next_case()
      shiny::updateSelectInput(session, "cases", selected = i)
    })

    update_cases <- function() {
      handled[[i()]] <<- TRUE
      i <- next_case()

      shiny::updateSelectInput(session, "cases",
        choices = case_index[!handled],
        selected = i
      )
    }
    next_case <- function() {
      if (all(handled)) {
        inform("Review complete")
        shiny::stopApp()
        return()
      }

      # Find next case;
      remaining <- case_index[!handled]
      next_cases <- which(remaining > i())
      if (length(next_cases) == 0) remaining[[1]] else remaining[[next_cases[[1]]]]
    }
  }

  inform(c(
    "Starting Shiny app for snapshot review",
    i = "Use Ctrl + C to quit"
  ))
  shiny::runApp(
    shiny::shinyApp(ui, server),
    quiet = TRUE,
    launch.browser = shiny::paneViewer()
  )
  invisible()
}

# helpers -----------------------------------------------------------------

snapshot_meta <- function(files = NULL, path = "tests/testthat") {
  all <- dir(file.path(path, "_snaps"), recursive = TRUE, full.names = TRUE)
  cur <- all[!grepl("\\.new\\.", all)]

  snap_file <- basename(dirname(cur)) != "_snaps"
  snap_test <- ifelse(snap_file, basename(dirname(cur)), gsub("\\.md$", "", basename(cur)))
  if (!is.null(files)) {
    selected <- snap_test %in% context_name(basename(files))
    cur <- cur[selected]
    snap_file <- snap_file[selected]
    snap_test <- snap_test[selected]
  }

  if (length(cur) == 0) {
    new <- character()
  } else {
    new <- paste0(tools::file_path_sans_ext(cur), ".new.", tools::file_ext(cur))
    new[!file.exists(new)] <- NA
  }

  snap_name <- ifelse(snap_file,
    file.path(snap_test, basename(cur)),
    basename(cur)
  )
  out <- data.frame(
    test = snap_test,
    name = snap_name,
    cur = cur,
    new = new,
    stringsAsFactors = FALSE
  )
  out <- out[!is.na(out$new), , drop = FALSE]
  out <- out[order(out$test, out$cur), , drop = FALSE]
  rownames(out) <- NULL
  out
}
