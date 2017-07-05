root <- rprojroot::find_package_root_file()
setwd(root)

# download catch
source <- "https://github.com/philsquared/Catch/releases/download/v1.9.6/catch.hpp"
target <- "inst/include/testthat/vendor/catch.h"
download.file(source, target)

# patch usages of 'rand()', 'srand()'
contents <- readLines(target)
contents <- gsub("std::srand", "srand", contents)
contents <- gsub("std::rand", "rand", contents)
writeLines(contents, con = target)
