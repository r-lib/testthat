#ifndef TESTTHAT_HPP
#define TESTTHAT_HPP

#include "vendor/catch.h"

#define context(__X__, ...) TEST_CASE(__X__, __FILE__, ##__VA_ARGS__)
#define test_that SECTION
#define expect_true CHECK
#define expect_false CHECK_FALSE

#endif

