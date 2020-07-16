# runs all tests and records output

                  file context                                      test nb failed skipped error warning passed
    1     test-basic.R                     logical tests act as expected  2      0   FALSE FALSE       0      2
    2     test-basic.R                   logical tests ignore attributes  2      0   FALSE FALSE       0      2
    3     test-basic.R                                    equality holds  2      0   FALSE FALSE       0      2
    4     test-basic.R         can't access variables from other tests 2  1      0    TRUE FALSE       0      0
    5     test-basic.R         can't access variables from other tests 1  1      0   FALSE FALSE       0      1
    6     test-empty.R                                        empty test  1      0    TRUE FALSE       0      0
    7     test-empty.R                             empty test with error  0      0   FALSE  TRUE       0      0
    8    test-errors.R                                            simple  0      0   FALSE  TRUE       0      0
    9    test-errors.R                                 after one success  1      0   FALSE  TRUE       0      1
    10   test-errors.R                                 after one failure  1      1   FALSE  TRUE       0      0
    11   test-errors.R                                       in the test  0      0   FALSE  TRUE       0      0
    12   test-errors.R                                   in expect_error  1      0   FALSE FALSE       0      1
    13 test-failures.R                                  just one failure  1      1   FALSE FALSE       0      0
    14 test-failures.R                                one failure on two  2      1   FALSE FALSE       0      1
    15 test-failures.R                                        no failure  2      0   FALSE FALSE       0      2
    16   test-helper.R                                       helper test  1      0   FALSE FALSE       0      1
    17     test-skip.R                                        Skips skip  1      0    TRUE FALSE       0      0

