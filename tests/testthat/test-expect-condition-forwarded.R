test_that("expect_error_forwarded general use", {
  expect_success(
    expect_error_forwarded(
      stop(),
      stop()
    )
  )

  # Matches
  expect_success(
    expect_error_forwarded(
      stop("foo"),
      stop("foo")
    )
  )
  # Does not match
  expect_error(
    expect_error_forwarded(
      stop("foo"),
      stop("bar")
    )
  )

  # Matches
  expect_success(
    expect_warning_forwarded(
      warning("foo"),
      warning("foo")
    )
  )
  # Does not match
  expect_warning(
    expect_error(
      expect_warning_forwarded(
        warning("foo"),
        warning("bar")
      ),
      regexp = '`warning("foo")` did not throw the expected warning.',
      fixed = TRUE
    ),
    regexp = "foo"
  )

  # Matches
  expect_success(
    expect_message_forwarded(
      message("foo"),
      message("foo")
    )
  )
  # Does not match
  expect_message(
    expect_error(
      expect_message_forwarded(
        message("foo"),
        message("bar")
      ),
      regexp = '`message("foo")` did not throw the expected message.',
      fixed = TRUE
    ),
    regexp = "foo"
  )
})

test_that("expect_*_forwarded with no condition generated ", {
  expect_error(
    expect_error_forwarded(1, 1),
    regexp = "No error thrown",
    fixed = TRUE
  )
  expect_error(
    expect_warning_forwarded(1, 1),
    regexp = "No warning thrown",
    fixed = TRUE
  )
  expect_error(
    expect_message_forwarded(1, 1),
    regexp = "No message thrown",
    fixed = TRUE
  )
})
