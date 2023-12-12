# miWQS

<details>

* Version: 0.4.4
* GitHub: https://github.com/phargarten2/miWQS
* Source code: https://github.com/cran/miWQS
* Date/Publication: 2021-04-02 21:50:02 UTC
* Number of recursive dependencies: 152

Run `revdepcheck::cloud_details(, "miWQS")` for more info

</details>

## Newly broken

*   checking re-building of vignette outputs ... ERROR
    ```
    Error(s) in re-building vignettes:
    --- re-building ‘README.Rmd’ using rmarkdown
    tlmgr: package repository https://ctan.mirrors.hoobly.com/systems/texlive/tlnet (verified)
    [1/1, ??:??/??:??] install: grffile [4k]
    running mktexlsr ...
    done running mktexlsr.
    tlmgr: package log updated: /opt/TinyTeX/texmf-var/web2c/tlmgr.log
    tlmgr: command log updated: /opt/TinyTeX/texmf-var/web2c/tlmgr-commands.log
    tlmgr: package repository https://mirror.mwt.me/ctan/systems/texlive/tlnet (verified)
    [1/2, ??:??/??:??] install: biblatex [249k]
    ...
    Warning: (biblatex)                and rerun LaTeX afterwards.
    Error: processing vignette 'README.Rmd' failed with diagnostics:
    Failed to build the bibliography via biber
    --- failed re-building ‘README.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘README.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

## Newly fixed

*   checking re-building of vignette outputs ... WARNING
    ```
    Error(s) in re-building vignettes:
      ...
    --- re-building ‘README.Rmd’ using rmarkdown
    
    tlmgr: Remote database (rev 68993) seems to be older than local (rev 68995 of texlive-scripts); please use different mirror or  wait a day or so.
    Warning in system2("tlmgr", args, ...) :
      running command ''tlmgr' search --file --global '/grffile.sty'' had status 1
    ! LaTeX Error: File `grffile.sty' not found.
    
    ! Emergency stop.
    ...
    
    Error: processing vignette 'README.Rmd' failed with diagnostics:
    LaTeX failed to compile /tmp/workdir/miWQS/old/miWQS.Rcheck/vign_test/miWQS/vignettes/README.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See README.log for more info.
    --- failed re-building ‘README.Rmd’
    
    SUMMARY: processing the following file failed:
      ‘README.Rmd’
    
    Error: Vignette re-building failed.
    Execution halted
    ```

