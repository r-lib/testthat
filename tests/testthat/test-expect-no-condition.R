test_that("unmatched conditions bubble up", {
  expect_error(expect_without_error(abort("foo"), message = "bar"), "foo")
  expect_warning(expect_without_warning(warn("foo"), message = "bar"), "foo")
  expect_message(expect_without_message(inform("foo"), message = "bar"), "foo")
  expect_condition(expect_without_condition(signal("foo", "x"), message = "bar"), "foo")
})

test_that("only matches conditions of specified type", {
  foo <- function() {
    warn("This is a problem!", class = "test")
  }
  expect_warning(expect_without_error(foo(), class = "test"), class = "test")
})

test_that("matched conditions give informative message", {
  foo <- function() {
    warn("This is a problem!", class = "test")
  }

  expect_snapshot(error = TRUE, {
    expect_without_warning(foo())
    expect_without_warning(foo(), message = "problem")
    expect_without_warning(foo(), class = "test")
    expect_without_warning(foo(), message = "problem", class = "test")
  })
})
