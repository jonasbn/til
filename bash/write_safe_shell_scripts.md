# Write Safe Shell Scripts

```bash
set -euf -o pipefail
```

```bash
set -e
```

> If a command fails, set -e will make the whole script exit, instead of just resuming on the next line.

```bash
set -u
```

> Treat unset variables as an error, and immediately exit.

```bash
set -f
```

> Disable filename expansion (globbing) upon seeing *, ?, etc.

```bash
set -o pipefail
```

> set -o pipefail causes a pipeline (for example, curl -s https://sipb.mit.edu/ | grep foo) to produce a failure return code if any command errors.

In addition `echo` should be avoided using `printf` instead.

Read [this insightful post](https://dev.to/victoria/how-to-print-newlines-in-command-line-output-3bjh) and [the POSIX recommendation](https://pubs.opengroup.org/onlinepubs/9699919799/utilities/echo.html#tag_20_37_16).

## Resources

- [Article from MIT Student Information Processing Board (SIPB)](https://sipb.mit.edu/doc/safe-shell/)
- [Google Shell Style Guide](https://google.github.io/styleguide/shell.xml)
- [Bash man-page](https://man7.org/linux/man-pages/man1/bash.1.html)
