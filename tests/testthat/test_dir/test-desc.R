
addition <- function(a, b) { a + b }
division <- function(a, b) {
  if (b == 1) {
    100
  } else if (b != 0) {
    a / b
  } else {
    NULL
  }
}

describe("math library", {
  x1 <- 1
  x2 <- 1
  describe("addition()", {
    for (i in seq(1, 10)) {
      for (j in seq(1, 10)) {
        it(paste0("works for ", i, " and ", j), {
          expect_equal(addition(i, j), i + j)
        })
      }
    }
  })
  describe("division()", {
    x1 <- 10
    x2 <- 2
    for (i in seq(1, 10)) {
      for (j in seq(1, 10)) {
        if (i == 4 && j == 7) {
          skip()
        }
        it(paste0("works for ", i, " and ", j), {
          expect_equal(division(i, j), i / j)
        })
      }
    }
    it("can handle division by 0", {
      expect_null(division(x1, 0))
    })
  })
})