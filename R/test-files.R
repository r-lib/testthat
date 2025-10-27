#' Run all tests in a directory
#'
#' @description
#' This function is the low-level workhorse that powers [test_local()] and
#' [test_package()]. Generally, you should not call this function directly.
#' In particular, you are responsible for ensuring that the functions to test
#' are available in the test `env` (e.g. via `load_package`).
#'
#' See `vignette("special-files")` to learn more about the conventions for test,
#' helper, and setup files that testthat uses, and what you might use each for.
#'
#' @section Environments:
#' Each test is run in a clean environment to keep tests as isolated as
#' possible. For package tests, that environment inherits from the package's
#' namespace environment, so that tests can access internal functions
#' and objects.
#'
#' @param path Path to directory containing tests.
#' @param package If these tests belong to a package, the name of the package.
#' @param filter If not `NULL`, only tests with file names matching this
#'   regular expression will be executed. Matching is performed on the file
#'   name after it's stripped of `"test-"` and `".R"`.
#' @param env Environment in which to execute the tests. Expert use only.
#' @param ... Additional arguments passed to [grepl()] to control filtering.
#' @param load_helpers Source helper files before running the tests?
#' @param stop_on_failure If `TRUE`, throw an error if any tests fail.
#' @param stop_on_warning If `TRUE`, throw an error if any tests generate
#'   warnings.
#' @param load_package Strategy to use for load package code:
#'   * "none", the default, doesn't load the package.
#'   * "installed", uses [library()] to load an installed package.
#'   * "source", uses [pkgload::load_all()] to a source package.
#'     To configure the arguments passed to `load_all()`, add this
#'     field in your DESCRIPTION file:
#'
#'     ```
#'     Config/testthat/load-all: list(export_all = FALSE, helpers = FALSE)
#'     ```
#' @return A list (invisibly) containing data about the test results.
#' @inheritParams with_reporter
#' @inheritParams source_file
#' @export
test_dir <- function(
  path,
  filter = NULL,
  reporter = NULL,
  env = NULL,
  ...,
  load_helpers = TRUE,
  stop_on_failure = TRUE,
  stop_on_warning = FALSE,
  package = NULL,
  load_package = c("none", "installed", "source"),
  shuffle = FALSE
) {
  load_package <- arg_match(load_package)

  start_first <- find_test_start_first(path, load_package, package)
  test_paths <- find_test_scripts(
    path,
    filter = filter,
    ...,
    full.names = FALSE,
    start_first = start_first
  )
  if (length(test_paths) == 0) {
    cli::cli_abort("No test files found.")
  }

  want_parallel <- find_parallel(path, load_package, package)

  if (is.null(reporter)) {
    if (want_parallel) {
      reporter <- default_parallel_reporter()
    } else {
      reporter <- default_reporter()
    }
  }
  reporter <- find_reporter(reporter)
  parallel <- want_parallel && reporter$capabilities$parallel_support

  test_files(
    test_dir = path,
    test_paths = test_paths,
    test_package = package,
    reporter = reporter,
    load_helpers = load_helpers,
    env = env,
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning,
    load_package = load_package,
    parallel = parallel,
    shuffle = shuffle
  )
}

#' Run tests in a single file
#'
#' Helper, setup, and teardown files located in the same directory as the
#' test will also be run. See `vignette("special-files")` for details.
#'
#' @inherit test_dir return params
#' @inheritSection test_dir Environments
#' @param path Path to file.
#' @param ... Additional parameters passed on to `test_dir()`
#' @param desc Optionally, supply a string here to run only a single
#'   test (`test_that()` or `describe()`) with this `desc`ription.
#' @export
#' @examples
#' path <- testthat_example("success")
#' test_file(path)
#' test_file(path, desc = "some tests have warnings")
#' test_file(path, reporter = "minimal")
test_file <- function(
  path,
  reporter = default_compact_reporter(),
  desc = NULL,
  package = NULL,
  shuffle = FALSE,
  ...
) {
  if (!file.exists(path)) {
    cli::cli_abort("{.arg path} does not exist.")
  }

  test_files(
    test_dir = dirname(path),
    test_package = package,
    test_paths = basename(path),
    reporter = reporter,
    desc = desc,
    shuffle = shuffle,
    ...
  )
}

test_files <- function(
  test_dir,
  test_package,
  test_paths,
  load_helpers = TRUE,
  reporter = default_reporter(),
  env = NULL,
  stop_on_failure = FALSE,
  stop_on_warning = FALSE,
  desc = NULL,
  load_package = c("none", "installed", "source"),
  parallel = FALSE,
  shuffle = FALSE,
  error_call = caller_env()
) {

  # Must keep these two blocks in sync
  if (parallel) {
    test_files_parallel(
      test_dir = test_dir,
      test_package = test_package,
      test_paths = test_paths,
      load_helpers = load_helpers,
      reporter = reporter,
      env = env,
      stop_on_failure = stop_on_failure,
      stop_on_warning = stop_on_warning,
      load_package = load_package,
      shuffle = shuffle
    )
  } else {
    test_files_serial(
      test_dir = test_dir,
      test_package = test_package,
      test_paths = test_paths,
      load_helpers = load_helpers,
      reporter = reporter,
      env = env,
      stop_on_failure = stop_on_failure,
      stop_on_warning = stop_on_warning,
      desc = desc,
      load_package = load_package,
      shuffle = shuffle,
      error_call = error_call
    )
  }
}

test_files_serial <- function(
  test_dir,
  test_package,
  test_paths,
  load_helpers = TRUE,
  reporter = default_reporter(),
  env = NULL,
  stop_on_failure = FALSE,
  stop_on_warning = FALSE,
  desc = NULL,
  load_package = c("none", "installed", "source"),
  shuffle = FALSE,
  error_call = caller_env()
) {
  # Because load_all() called by test_files_setup_env() will have already
  # loaded them. We don't want to rely on testthat's loading since that
  # only affects the test environment and we want to keep the helpers
  # loaded in the user's session.
  load_package <- arg_match(load_package)
  if (load_package == "source") {
    load_helpers <- FALSE
  }

  env <- test_files_setup_env(test_package, test_dir, load_package, env)
  # record testing env for mocks
  local_testing_env(env)

  test_files_setup_state(test_dir, test_package, load_helpers, env)
  reporters <- test_files_reporter(reporter, "serial", desc = desc)

  with_reporter(
    reporters$multi,
    lapply(
      test_paths,
      test_one_file,
      env = env,
      desc = desc,
      shuffle = shuffle,
      error_call = error_call
    )
  )

  test_files_check(
    reporters$list$get_results(),
    stop_on_failure = stop_on_failure,
    stop_on_warning = stop_on_warning
  )
}

test_files_setup_env <- function(
  test_package,
  test_dir,
  load_package = c("none", "installed", "source"),
  env = NULL
) {
  library(testthat)

  load_package <- arg_match(load_package)
  if (load_package == "installed") {
    library(test_package, character.only = TRUE)
  } else if (load_package == "source") {
    # Allow configuring what we export to the search path (#1636)
    args <- find_load_all_args(test_dir)
    pkgload::load_all(
      test_dir,
      export_all = args[["export_all"]],
      helpers = args[["helpers"]],
      quiet = TRUE
    )
  }

  env %||% test_env(test_package)
}

find_load_all_args <- function(path) {
  default <- list(export_all = TRUE, helpers = TRUE)

  desc <- find_description(path)
  if (is.null(desc)) {
    return(default)
  }

  args <- desc$get_field("Config/testthat/load-all", default = NULL)
  if (is.null(args)) {
    return(default)
  }

  args <- parse_expr(args)
  if (!is_call(args, "list")) {
    cli::cli_abort("{.field Config/testthat/load-all} must be a list.")
  }

  args <- as.list(args[-1])
  list(
    export_all = args[["export_all"]] %||% default[["export_all"]],
    helpers = args[["helpers"]] %||% default[["helpers"]]
  )
}

test_files_setup_state <- function(
  test_dir,
  test_package,
  load_helpers,
  env,
  frame = parent.frame()
) {
  # Define testing environment
  local_test_directory(test_dir, test_package, .env = frame)
  withr::local_options(
    topLevelEnvironment = env_parent(env),
    .local_envir = frame
  )

  # Load helpers, setup, and teardown (on exit)
  local_teardown_env(frame)
  if (load_helpers) {
    source_test_helpers(".", env)
  }
  source_test_setup(".", env)
  withr::defer(source_test_teardown(".", env), frame) # old school
}

test_files_reporter <- function(
  reporter,
  mode = c("serial", "parallel"),
  desc = NULL,
  frame = caller_env()
) {
  mode <- arg_match(mode)

  # User selected reporter
  user <- find_reporter(reporter)

  # Reporter that collect test results
  lister <- ListReporter$new()

  # Snapshot reporter
  if (mode == "parallel") {
    snap_base <- MainprocessSnapshotReporter
  } else {
    snap_base <- SnapshotReporter
  }
  snap <- local_snapshotter(
    snap_base,
    fail_on_new = on_ci(),
    desc = desc,
    frame = frame
  )

  reporters <- compact(list(user, lister, snap))
  list(
    multi = MultiReporter$new(reporters = reporters),
    list = lister
  )
}

test_files_check <- function(
  results,
  stop_on_failure = TRUE,
  stop_on_warning = FALSE
) {
  if (stop_on_failure && !all_passed(results)) {
    cli::cli_abort(
      "Test failures.",
      call = NULL,
      trace = data.frame()
    )
  }
  if (stop_on_warning && any_warnings(results)) {
    cli::cli_abort(
      "Tests generated warnings.",
      call = NULL,
      trace = data.frame()
    )
  }

  invisible(results)
}

test_one_file <- function(
  path,
  env = test_env(),
  desc = NULL,
  shuffle = FALSE,
  error_call = caller_env()
) {
  reporter <- get_reporter()
  withr::defer(teardown_run())

  reporter$start_file(path)
  source_file(
    path,
    env = env(env),
    desc = desc,
    shuffle = shuffle,
    error_call = error_call
  )
  reporter$end_context_if_started()
  reporter$end_file()
}

# Helpers -----------------------------------------------------------------

#' Run code after all test files
#'
#' This environment has no purpose other than as a handle for [withr::defer()]:
#' use it when you want to run code after all tests have been run.
#' Typically, you'll use `withr::defer(cleanup(), teardown_env())`
#' immediately after you've made a mess in a `setup-*.R` file.
#'
#' @export
teardown_env <- function() {
  if (is.null(the$teardown_env)) {
    cli::cli_abort(
      "{.fn teardown_env} has not been initialized.",
      .internal = TRUE
    )
  }

  the$teardown_env
}

local_teardown_env <- function(frame = parent.frame()) {
  local_bindings(teardown_env = frame, .env = the, .frame = frame)
}

#' Find test files
#'
#' @param path path to tests
#' @param invert If `TRUE` return files which **don't** match.
#' @param ... Additional arguments passed to [grepl()] to control filtering.
#' @param start_first A character vector of file patterns (globs, see
#'   [utils::glob2rx()]). The patterns are for the file names (base names),
#'   not for the whole paths. testthat starts the files matching the
#'   first pattern first,  then the ones matching the second, etc. and then
#'   the rest of the files, alphabetically. Parallel tests tend to finish
#'   quicker if you start the slowest files first. `NULL` means alphabetical
#'   order.
#' @inheritParams test_dir
#' @return A character vector of paths
#' @keywords internal
#' @export
find_test_scripts <- function(
  path,
  filter = NULL,
  invert = FALSE,
  ...,
  full.names = TRUE,
  start_first = NULL
) {
  files <- dir(path, "^test.*\\.[rR]$", full.names = full.names)
  files <- filter_test_scripts(files, filter, invert, ...)
  order_test_scripts(files, start_first)
}

filter_test_scripts <- function(files, filter = NULL, invert = FALSE, ...) {
  if (is.null(filter)) {
    return(files)
  }

  which_files <- grepl(filter, context_name(files), ...)
  if (isTRUE(invert)) {
    which_files <- !which_files
  }
  files[which_files]
}

find_test_start_first <- function(path, load_package, package) {
  # Make sure we get the local package package if not "installed"
  if (load_package != "installed") {
    package <- NULL
  }
  desc <- find_description(path, package)
  if (is.null(desc)) {
    return(NULL)
  }

  conf <- desc$get_field("Config/testthat/start-first", NULL)
  if (is.null(conf)) {
    return(NULL)
  }

  trimws(strsplit(conf, ",")[[1]])
}

order_test_scripts <- function(paths, start_first) {
  if (is.null(start_first)) {
    return(paths)
  }
  filemap <- data.frame(
    stringsAsFactors = FALSE,
    base = sub("\\.[rR]$", "", sub("^test[-_\\.]?", "", basename(paths))),
    orig = paths
  )
  rxs <- utils::glob2rx(start_first)
  mch <- lapply(rxs, function(rx) filemap$orig[grep(rx, filemap$base)])
  unique(c(unlist(mch), paths))
}
