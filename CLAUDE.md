# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## About This Project

testthat is R's most popular unit testing framework, used by thousands of CRAN packages. It provides functions to make testing R code as fun and addictive as possible, with clear expectations, visual progress indicators, and seamless integration with R package development workflows.

## Key Development Commands

General advice:
* When running R from the console, always run it with `--quiet --vanilla`
* Always run `air format .` after generating code

### Testing

- Use `devtools::test()` to run all tests
- Use `devtools::test_file("tests/testthat/test-filename.R")` to run tests in a specific file
- DO NOT USE `devtools::test_active_file()`
- All testing functions automatically load code; you don't needs to.

- All new code should have an accompanying test.
- Tests for `R/{name}.R` go in `tests/testthat/test-{name}.R`. 
- If there are existing tests, place new tests next to similar existing tests.

### Documentation

- Always run `devtools::document()` after changing any roxygen2 docs.
- Every user facing function should be exported and have roxygen2 documentation.
- Whenever you add a new documentation file, make sure to also add the topic name to `_pkgdown.yml`. 
- Run `pkgdown::check_pkgdown()` to check that all topics are included in the reference index.

## Core Architecture

### Main Components

1. **Core Testing Functions** (`R/test-that.R`, `R/test-package.R`):
   - `test_that()` - The fundamental testing function
   - `test_local()`, `test_package()`, `test_check()` - Different ways to run test suites

2. **Expectations** (`R/expect-*.R`):
   - Modular expectation functions (equality, conditions, types, etc.)
   - Each expectation type has its own file following the pattern `expect-[type].R`

3. **Reporters** (`R/reporter*.R`):
   - Different output formats for test results
   - Object-oriented design with base `Reporter` class
   - Includes check, debug, progress, summary, JUnit, TAP formats

4. **Snapshot Testing** (`R/snapshot*.R`):
   - Value snapshots, file snapshots, output snapshots
   - Automatic management and comparison of expected outputs

5. **Parallel Testing** (`R/parallel*.R`):
   - Multi-core test execution
   - Configuration via `Config/testthat/parallel: true` in DESCRIPTION

6. **Mocking** (`R/mock*.R`, `R/mock2*.R`):
   - Function mocking capabilities
   - Both legacy (`mock.R`) and modern (`mock2*.R`) implementations

### Key Design Patterns

- **Editions**: testthat has different "editions" with varying behavior, controlled by `Config/testthat/edition`
- **Reporters**: Extensible reporting system using R6 classes
- **Lazy Evaluation**: Expectations use substitute() and lazy evaluation for better error messages
- **C++ Integration**: Core functionality implemented in C++ for performance

### File Organization

- `R/` - All R source code, organized by functionality
- `src/` - C++ source code and Makevars
- `inst/include/testthat/` - C++ headers for other packages to use
- `tests/testthat/` - Package's own comprehensive test suite
- `vignettes/` - Documentation on testing concepts and workflows

### Important Configuration

The package uses several DESCRIPTION fields for configuration:
- `Config/testthat/edition: 3` - Sets testthat edition
- `Config/testthat/parallel: true` - Enables parallel testing
- `Config/testthat/start-first` - Tests to run first in parallel mode

### C++ Testing Infrastructure

testthat provides C++ testing capabilities via Catch framework:
- Headers in `inst/include/testthat/`
- Test runner infrastructure in `src/test-runner.cpp`
- Integration with R's testing system

### Snapshot Testing Workflow

- Snapshots stored in `tests/testthat/_snaps/`
- Different snapshot types: values, files, output
- Version-specific snapshots for different R versions
- Use `testthat::snapshot_accept()` to update snapshots

This codebase prioritizes backward compatibility, comprehensive testing, and clear, descriptive error messages to help R developers write better tests.
