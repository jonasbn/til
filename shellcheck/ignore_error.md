# Ignore shellcheck Error

When you want to ignore a `shellcheck` rule. You can do this using a comment in your code.

```shell
hexToAscii() {
  # shellcheck disable=SC2059
  printf "\x$1"
}
```

Lifted from [shellcheck wiki][IGNORE].

If you want to ignore multiple rules, use comma (`,`) to separate the rules indicators.

```shell
# shellcheck disable=SC2116,SC2086
hash=$(echo ${hash})    # trim spaces
```

Lifted from [shellcheck wiki][IGNORE].

## Resources and References

- [shellcheck Wiki][IGNORE]

[IGNORE]: https://www.shellcheck.net/wiki/Ignore
