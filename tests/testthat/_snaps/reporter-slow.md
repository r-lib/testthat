# multiplication works

    Code
      show_all <- SlowReporter$new(min_time = 0)
      with_reporter(show_all, n_tests(10))
    Output
      [-.--s] : run 1
      [-.--s] : run 2
      [-.--s] : run 3
      [-.--s] : run 4
      [-.--s] : run 5
      [-.--s] : run 6
      [-.--s] : run 7
      [-.--s] : run 8
      [-.--s] : run 9
      [-.--s] : run 10
      
      == Summary =====================================================================
      All tests:  -.--s
      Slow tests: -.--s

