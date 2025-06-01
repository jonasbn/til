# Slimming History

I love the history slimming feature in Bash, apparently Zsh has one just like it.

From below StackOverflow post:

> The zsh shell doesn't use the HISTIGNORE environment variable. Instead, it has a HISTORY_IGNORE environment variable.
>

Example:

```zsh
HISTORY_IGNORE="(ls|cd|pwd|exit|cd ..|cd -|clear|ls -l|ls -la|git s)"
```

And more to come as the list will grow.

You could monitor your history for candidates:

```zsh
tail -n 2000 -f ~/.zsh_history | grep -E '^\w+$'
```

## Resources and References

- [StackOverflow: "HISTIGNORE not working in zsh"](https://stackoverflow.com/questions/38549251/histignore-not-working-in-zsh)
- [TIL/bash: "Slimming History"](../bash/slimming_history.md)
