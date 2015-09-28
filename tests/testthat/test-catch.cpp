#include <tests/testthat.h>

int twoPlusTwo() { return 2 + 2; }

context("Example Unit Test") {

  test_that("4 + 4 == 8") {
    expect_true((4 + 4) == 8);
  }

  test_that("2 + 2 == 4") {
    expect_true(twoPlusTwo() == 4);
  }
}

context("A second context") {

  test_that("2 - 2 == 0") {
    expect_true((2 - 2) == 0);
  }

  test_that("-1 is negative") {
    expect_true((-1 < 0));
  }

}
