Hi,

This is an automated email to let you know about the upcoming release of {{{ my_package }}}, which will be submitted to CRAN on {{{ date }}} (less than two weeks away!). To check for potential problems, I ran `R CMD check` on your package {{{your_package}}} ({{{your_version}}}). 

I found: {{{your_summary}}}.

{{#you_have_problems}}
{{{your_results}}}

If I got an ERROR because I couldn't install your package (or one of it's dependencies), my apologies. You'll have to run the checks yourself (unfortunately I don't have the time to diagnose installation failures).

Otherwise, please carefully look at the results, and let me know if I've introduced a bug in teststhat. There are two common classes of new failures caused by this version of testthat:

1. `expect_output()` no longer automatically prints the object. You'll need to 
   explicitly `print()` if you want to check the output of a print method.

2. `expect_error()` now only compares against the actual error message,
   not the prefix, e.g. "Error in foo(): ". You might need to change you
   match message to take this into account.

I realise updating tests that used to work doesn't seem like the best use of anyone's time, but I'm confident these changes will improve the overall reliability and robustness of testthat (and you still have nearly two weeks to make the changes).

If it doesn't look like a bug in testthat, please prepare an update for CRAN. Ideally you'll tweak your package so it works with both the released and development versions of testthat. Otherwise, be prepared to submit your package to CRAN soon after I let you know that I've submitted.

To get the development version of {{{ my_package }}} so you can run the checks yourself, you can run:

    # install.packages("devtools")
    devtools::install_github("{{my_github}}")
    
To see what's changed visit <https://github.com/{{{my_github}}}/blob/master/NEWS.md>.

{{/you_have_problems}}
{{^you_have_problems}}
It looks like everything is ok, so you don't need to take any action, but you might want to read the NEWS, <https://github.com/{{{my_github}}}/blob/master/NEWS.md>, to see what's changed.
{{/you_have_problems}}

If you have any questions about this email, please feel free to respond directly.

Regards,

{{{ me }}}
