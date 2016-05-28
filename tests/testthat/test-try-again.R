context("try_again")

succeed_after <- function(i) {
  function() {
    i <<- i - 1
    if (i > 0) fail(paste0("i is ", i))
  }
}

test_that("tries multiple times", {
  third_try <- succeed_after(3)
  expect_true(try_again(3, third_try()))

  third_try <- succeed_after(3)
  expect_failure(try_again(2, third_try()), "i is 1")
})
