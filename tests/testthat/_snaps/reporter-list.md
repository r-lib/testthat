# works in parallel

    Code
      results[, c(1:8, 12:13)]
    Output
        file context test nb failed skipped error warning passed         result
      1   f1          t11  2      0   FALSE FALSE       0      2 msg111, msg112
      2   f2          t21  2      0   FALSE FALSE       0      2 msg211, msg212
      3   f2          t22  1      0    TRUE FALSE       0      0        skip221

