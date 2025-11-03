#!/bin/sh

cd ~/Documents/testthat/

# Verify we have the downloaded file
if [ ! -f catch2-update/catch.hpp ]; then
  echo "ERROR: catch.hpp not found. Run 01-download.sh first."
  exit 1
fi

# Install the new Catch2 header
echo "Installing Catch2 v2.13.10..."
mv catch2-update/catch.hpp inst/include/testthat/vendor/catch.hpp

# Change: #include "vendor/catch.h" to #include "vendor/catch.hpp"
sed 's|#include "vendor/catch\.h"|#include "vendor/catch.hpp"|g' \
  inst/include/testthat/testthat.h

if [ $? -eq 0 ]; then
  echo "Verifying change..."
  grep -n 'catch\.hpp' inst/include/testthat/testthat.h
else
  echo "ERROR: Failed to update testthat.h"
  exit 1
fi

echo "Catch2 v2.13.10 installed to inst/include/testthat/vendor/catch.hpp"
echo ""
echo "inst/include/testthat/testthat.h now uses catch.hpp instead of catch.h"
echo "test compilation with: R CMD INSTALL --preclean ."
echo "run tests with: Rscript -e 'testthat::test_local()'"
