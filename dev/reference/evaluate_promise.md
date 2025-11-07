# Evaluate a promise, capturing all types of output.

Evaluate a promise, capturing all types of output.

## Usage

``` r
evaluate_promise(code, print = FALSE)
```

## Arguments

- code:

  Code to evaluate.

## Value

A list containing

- result:

  The result of the function

- output:

  A string containing all the output from the function

- warnings:

  A character vector containing the text from each warning

- messages:

  A character vector containing the text from each message

## Examples

``` r
evaluate_promise({
  print("1")
  message("2")
  warning("3")
  4
})
#> $result
#> [1] 4
#> 
#> $output
#> [1] "[1] \"1\""
#> 
#> $warnings
#> [1] "3"
#> 
#> $messages
#> [1] "2\n"
#> 
```
