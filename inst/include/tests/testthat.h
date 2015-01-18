#ifndef TESTTHAT_HPP
#define TESTTHAT_HPP

# include "vendor/catch.h"

# define test_that(__X__, ...) TEST_CASE(__X__, __FILE__, ##__VA_ARGS__)
# define expect_true(__X__) CHECK(__X__)
# define expect_false(__X__) CHECK_FALSE(__X__)

#endif

