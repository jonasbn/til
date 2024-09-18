# Are You Sure?

This might be the oldest trick I learned when I started using `rm` and `mv` on the command line on Linux ages ago.

The trick is to use the `--interactive` / `-i` option to `rm` and `mv` to make sure you are not deleting or moving the wrong files.

```bash
alias rm='rm --interactive'
```

By creating an alias for `rm` you will be prompted for confirmation before deleting files, since the alias will let `rm` be replaced by `rm -i` which prompts for confirmation.

The same pattern can be used for other commands and simple as it is it can be a lifesaver.
