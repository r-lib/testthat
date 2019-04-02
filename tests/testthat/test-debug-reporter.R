get_vars_from_debug_reporter <- function(choice, fun, envir = parent.frame()) {
  frame <- get_frame_from_debug_reporter(choice, fun, envir)
  ls(frame)
}

get_frame_from_debug_reporter <- function(choice, fun, envir = parent.frame()) {
  force(choice)
  test_debug_reporter_parent_frame <- NULL

  with_mock(
    show_menu = function(choices, title = NULL) {
      # if (choice > 0) print(choices)
      my_choice <- choice
      choice <<- 0L
      my_choice
    },
    browse_frame = function(frame, skip) {
      test_debug_reporter_parent_frame <<- frame
    },
    sink_number = function() 0L,
    with_reporter(
      "debug",
      test_that("debug_reporter_test", fun())
    )
  )

  test_debug_reporter_parent_frame
}

success_fun <- function() {
  aa <- 1
  expect_true(TRUE)
}

test_that("debug reporter is not called for successes", {
  expect_null(get_frame_from_debug_reporter(2, success_fun))
})

test_that("browser() is called for the correct frame for failures", {
  fun_1 <- function() {
    aa <- 1
    expect_true(FALSE)
  }

  fun_2 <- function() {
    f <- function() expect_true(FALSE)
    f()
  }

  fun_3 <- function() {
    f <- function() {
      g <- function() expect_true(FALSE)
      g()
    }
    f()
  }

  expect_equal(get_vars_from_debug_reporter(1, fun_1), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_1), "aa")

  expect_equal(get_vars_from_debug_reporter(1, fun_2), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_2), "f")
  expect_equal(get_vars_from_debug_reporter(3, fun_2), character())

  expect_equal(get_vars_from_debug_reporter(1, fun_3), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_3), "f")
  expect_equal(get_vars_from_debug_reporter(3, fun_3), "g")
  expect_equal(get_vars_from_debug_reporter(4, fun_3), character())
})

test_that("browser() is called for the correct frame for warnings", {
  fun_1 <- function() {
    aa <- 1
    warning("warn")
  }

  fun_2 <- function() {
    f <- function() warning("warn")
    f()
  }

  fun_3 <- function() {
    f <- function() {
      g <- function() warning("warn")
      g()
    }
    f()
  }

  expect_equal(get_vars_from_debug_reporter(1, fun_1), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_1), "aa")

  expect_equal(get_vars_from_debug_reporter(1, fun_2), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_2), "f")
  expect_equal(get_vars_from_debug_reporter(3, fun_2), character())

  expect_equal(get_vars_from_debug_reporter(1, fun_3), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_3), "f")
  expect_equal(get_vars_from_debug_reporter(3, fun_3), "g")
  expect_equal(get_vars_from_debug_reporter(4, fun_3), character())
})

test_that("browser() is called for the correct frame for errors", {
  fun_1 <- function() {
    aa <- 1
    stop("error")
  }

  fun_2 <- function() {
    f <- function() stop("error")
    f()
  }

  fun_3 <- function() {
    f <- function() {
      g <- function() stop("error")
      g()
    }
    f()
  }

  expect_equal(get_vars_from_debug_reporter(1, fun_1), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_1), "aa")

  expect_equal(get_vars_from_debug_reporter(1, fun_2), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_2), "f")
  expect_equal(get_vars_from_debug_reporter(3, fun_2), character())

  expect_equal(get_vars_from_debug_reporter(1, fun_3), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_3), "f")
  expect_equal(get_vars_from_debug_reporter(3, fun_3), "g")
  expect_equal(get_vars_from_debug_reporter(4, fun_3), character())
})

test_that("browser() is called for the correct frame for skips", {
  fun_1 <- function() {
    aa <- 1
    skip("skip")
  }

  fun_2 <- function() {
    f <- function() skip("skip")
    f()
  }

  fun_3 <- function() {
    f <- function() {
      g <- function() skip("skip")
      g()
    }
    f()
  }

  expect_equal(get_vars_from_debug_reporter(1, fun_1), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_1), "aa")

  expect_equal(get_vars_from_debug_reporter(1, fun_2), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_2), "f")
  expect_equal(get_vars_from_debug_reporter(3, fun_2), character())

  expect_equal(get_vars_from_debug_reporter(1, fun_3), character())
  expect_equal(get_vars_from_debug_reporter(2, fun_3), "f")
  expect_equal(get_vars_from_debug_reporter(3, fun_3), "g")
  expect_equal(get_vars_from_debug_reporter(4, fun_3), character())
})
