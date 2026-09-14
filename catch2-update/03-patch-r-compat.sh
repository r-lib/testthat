#!/bin/sh

# Patch Catch2 to be compatible with R CMD check requirements
# Fixes warnings about abort, sprintf, and srand

cd ~/Documents/testthat/

CATCH_FILE="inst/include/testthat/vendor/catch.hpp"

if [ ! -f "$CATCH_FILE" ]; then
  echo "ERROR: $CATCH_FILE not found. Run 02-install.sh first."
  exit 1
fi

echo "Creating backup of catch.hpp..."
cp "$CATCH_FILE" "$CATCH_FILE.backup"

echo "Patching Catch2 for R compatibility..."

# First, add R header includes after the initial header guard
echo "  - Adding R headers..."
sed -i '/#define TWOBLUECUBES_SINGLE_INCLUDE_CATCH_HPP_INCLUDED/a\
#ifdef __cplusplus\
extern "C" {\
#endif\
#include <R_ext/Error.h>\
#ifdef __cplusplus\
}\
#endif' "$CATCH_FILE"

# Fix 1: Replace std::abort() with Rf_error()
# This uses R's native error mechanism instead of terminating the process
echo "  - Replacing abort() with Rf_error()..."
sed -i 's/std::abort();/Rf_error("Fatal error in test framework");/g' "$CATCH_FILE"

# Fix 2: Replace std::sprintf() with std::snprintf() for safety
# snprintf is safer and avoids R CMD check warnings
echo "  - Replacing sprintf() with snprintf()..."
sed -i 's/std::sprintf(buffer, "%.3f", duration);/std::snprintf(buffer, sizeof(buffer), "%.3f", duration);/g' "$CATCH_FILE"

# Fix 3: Comment out std::srand() - R uses its own RNG
# R packages should use R's RNG via GetRNGstate()/PutRNGstate()
echo "  - Commenting out srand()..."
sed -i 's/std::srand(config.rngSeed());/\/\/ std::srand(config.rngSeed()); \/\/ Disabled for R compatibility/g' "$CATCH_FILE"

echo ""
echo "Verifying patches..."
echo ""

echo "1. Checking abort() was replaced:"
if grep -q "std::abort()" "$CATCH_FILE"; then
  echo "   WARNING: std::abort() still found!"
else
  echo "   No abort() calls found"
fi

echo ""
echo "2. Checking sprintf() was replaced:"
if grep -q "std::sprintf(buffer" "$CATCH_FILE"; then
  echo "   WARNING: std::sprintf() still found!"
else
  echo "   No sprintf() calls found"
fi

echo ""
echo "3. Checking srand() was commented out:"
if grep -q "^[[:space:]]*std::srand(config.rngSeed());" "$CATCH_FILE"; then
  echo "   WARNING: Uncommented std::srand() still found!"
else
  echo "   srand() has been disabled"
fi

echo ""
echo "Patch complete!"
echo ""
echo "To test: R CMD INSTALL --preclean . && R CMD check --as-cran ."
echo ""
echo "If you need to restore the original, run:"
echo "  mv $CATCH_FILE.backup $CATCH_FILE"
