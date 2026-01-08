# Report test progress for LLMs

`LlmReporter` is designed for use with Large Language Models (LLMs). It
reports problems (warnings, skips, errors, and failures) as they occur
and the total number of successes at the end.

`LlmReporter` is used by default when tests are run by a coding agent.
Currently we detect Claude Code, Cursor, and Gemini CLI. If using
another tool, configure it to set env var `AGENT=1`.

## See also

Other reporters:
[`CheckReporter`](https://testthat.r-lib.org/dev/reference/CheckReporter.md),
[`DebugReporter`](https://testthat.r-lib.org/dev/reference/DebugReporter.md),
[`FailReporter`](https://testthat.r-lib.org/dev/reference/FailReporter.md),
[`JunitReporter`](https://testthat.r-lib.org/dev/reference/JunitReporter.md),
[`ListReporter`](https://testthat.r-lib.org/dev/reference/ListReporter.md),
[`LocationReporter`](https://testthat.r-lib.org/dev/reference/LocationReporter.md),
[`MinimalReporter`](https://testthat.r-lib.org/dev/reference/MinimalReporter.md),
[`MultiReporter`](https://testthat.r-lib.org/dev/reference/MultiReporter.md),
[`ProgressReporter`](https://testthat.r-lib.org/dev/reference/ProgressReporter.md),
[`RStudioReporter`](https://testthat.r-lib.org/dev/reference/RStudioReporter.md),
[`Reporter`](https://testthat.r-lib.org/dev/reference/Reporter.md),
[`SilentReporter`](https://testthat.r-lib.org/dev/reference/SilentReporter.md),
[`SlowReporter`](https://testthat.r-lib.org/dev/reference/SlowReporter.md),
[`StopReporter`](https://testthat.r-lib.org/dev/reference/StopReporter.md),
[`SummaryReporter`](https://testthat.r-lib.org/dev/reference/SummaryReporter.md),
[`TapReporter`](https://testthat.r-lib.org/dev/reference/TapReporter.md),
[`TeamcityReporter`](https://testthat.r-lib.org/dev/reference/TeamcityReporter.md)
