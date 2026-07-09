#!/bin/sh

cd ~/Documents/testthat/
cp inst/include/testthat/vendor/catch.h catch2-update/catch.h.v1.9.6.backup
rm inst/include/testthat/vendor/catch.h

# Download Catch2 v2.13.10 single header
echo "Downloading Catch2 v2.13.10..."
wget -O catch2-update/catch.hpp \
  https://github.com/catchorg/Catch2/releases/download/v2.13.10/catch.hpp

# Verify download
if [ -f catch2-update/catch.hpp ]; then
  echo "Download successful!"
  echo "File size: $(wc -c < catch2-update/catch.hpp) bytes"
  
  # Check the header to verify it's Catch2 v2.13.10
  head -n 10 catch2-update/catch.hpp
else
  echo "ERROR: Download failed!"
  exit 1
fi
