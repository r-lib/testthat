succeed_after <- function(i) {
  function() {
    i <<- i - 1
    expect_equal(i, 0)
  }
}

test_that("tries multiple times", {
  third_try <- succeed_after(3)
  expect_snapshot(result <- try_again(3, third_try()))
  expect_equal(result, 0)

  third_try <- succeed_after(3)
  expect_snapshot(try_again(1, third_try()), error = TRUE)
})
