# How to detect if a pipe is attached to stdout

This can be detected using `isatty`.

```python

import sys

if sys.stdout.isatty():
    # You're running in a real terminal
else:
    # You're being piped or redirected
```

Example and solution from [StackOverflow][stackoverflow].

## Resources and References

- [Python: `sys.stdout.isatty()`](https://docs.python.org/3/library/sys.html#sys.stdout.isatty)
- [StackOverflow: "How do I detect whether sys.stdout is attached to terminal or not?"][stackoverflow]

[stackoverflow]: https://stackoverflow.com/questions/1077113/how-do-i-detect-whether-sys-stdout-is-attached-to-terminal-or-not
