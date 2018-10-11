# Stop brew from calling home

`brew` on OSX by default sends anonymous usage data, this is okay, but your local security policy might not approve of this, luckily this can be disabled.

You can do it by _invocation/session_?

```bash
export HOMEBREW_NO_ANALYTICS=1
```

Or you can disable it completely:

```bash
brew analytics off
```

## References

- [GitHub](https://github.com/Homebrew/brew/blob/master/docs/Analytics.md)
