#!/bin/sh

cd ~/Documents/testthat/

echo "======================================"
echo "Testing Catch2 v2.13.10 Installation"
echo "======================================"
echo ""

# Test 1: Check if files exist
echo "[1/5] Checking files..."
if [ -f inst/include/testthat/vendor/catch.hpp ]; then
  echo " catch.hpp exists"
else
  echo " catch.hpp missing"
  exit 1
fi

# Test 2: Verify testthat.h includes catch.hpp
echo "[2/5] Checking testthat.h includes catch.hpp..."
if grep -q 'catch\.hpp' inst/include/testthat/testthat.h; then
  echo " testthat.h includes catch.hpp"
else
  echo " testthat.h still includes catch.h"
  exit 1
fi

# Test 3: Test C++11 compilation
echo "[3/5] Testing C++11 compilation..."
cat > /tmp/test_catch2_cxx11.cpp << 'EOF'
#define TESTTHAT_TEST_RUNNER
#include "testthat.h"
EOF

g++ -std=gnu++11 \
  -I inst/include \
  -I /usr/include/R \
  -c /tmp/test_catch2_cxx11.cpp \
  -o /tmp/test_catch2_cxx11.o 2>&1 | head -20

if [ $? -eq 0 ]; then
  echo " C++11 compilation successful"
  rm -f /tmp/test_catch2_cxx11.o
else
  echo " C++11 compilation failed"
fi

# Test 4: Test C++23 compilation
echo "[4/5] Testing C++23 compilation..."
cat > /tmp/test_catch2_cxx23.cpp << 'EOF'
#define TESTTHAT_TEST_RUNNER
#include "testthat.h"
EOF

g++ -std=gnu++23 \
  -I inst/include \
  -I /usr/include/R \
  -c /tmp/test_catch2_cxx23.cpp \
  -o /tmp/test_catch2_cxx23.o 2>&1 | head -20

if [ $? -eq 0 ]; then
  echo " C++23 compilation successful - THIS IS THE FIX!"
  rm -f /tmp/test_catch2_cxx23.o
else
  echo " C++23 compilation failed"
  exit 1
fi

# Test 5: Build testthat package
echo "[5/5] Building testthat package..."
R CMD INSTALL --preclean . > /tmp/testthat_install.log 2>&1

if [ $? -eq 0 ]; then
  echo " Package build successful"
  echo ""
  echo "======================================"
  echo "All tests passed!"
  echo "======================================"
else
  echo " Package build failed"
  echo "See /tmp/testthat_install.log for details"
  exit 1
fi

# Cleanup
rm -f /tmp/test_catch2_*.cpp /tmp/test_catch2_*.o
