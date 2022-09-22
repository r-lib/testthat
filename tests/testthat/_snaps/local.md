# can force cli to display run hyperlinks

    Code
      cat(cli::format_inline("{.run f()}"))
    Output
      `f()`

---

    Code
      cat(cli::format_inline("{.run f()}"))
    Output
      ]8;;ide:run:f()f()]8;;

