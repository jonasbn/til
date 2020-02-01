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

## Resources

- [Article from MIT Student Information Processing Board (SIPB)](https://sipb.mit.edu/doc/safe-shell/)
- [Google Shell Style Guide](https://google.github.io/styleguide/shell.xml)
