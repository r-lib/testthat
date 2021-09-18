# produces useful summaries for long calls

    Code
      expr_label(quote(foo(a = "this is a long argument", b = "this is a long argument",
        c = "this is a long argument")))
    Output
      [1] "foo(...)"
    Code
      expr_label(quote(arg + arg + arg + arg + arg + arg + arg + arg + arg + arg +
      arg + arg))
    Output
      [1] "... + arg"
    Code
      expr_label(quote(arg + (arg + arg + arg + arg + arg + arg + arg + arg + arg +
        arg + arg)))
    Output
      [1] "arg + ..."
    Code
      expr_label(quote(function(a, b, c) {
        a + b + c
      }))
    Output
      [1] "function(a, b, c) ..."

# informative error for missing arg

    Code
      expect_equal()
    Error <simpleError>
      argument `object` is missing, with no default.

