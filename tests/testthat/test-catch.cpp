#include <tests/testthat.h>

int twoPlusTwo() { return 2 + 2; }

context("Example Unit Test") {
  test_that("2 + 2 == 4") {
    expect_true(twoPlusTwo() == 4);
  }
}
