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

test_that("handles errors", {
  fails_twice <- local({
    i <- 0
    function() {
      i <<- i + 1
      if (i <= 2) stop("fail") else 1
    }
  })

  expect_snapshot(result <- try_again(3, expect_equal(fails_twice(), 1)))
  expect_equal(result, 1)
})
