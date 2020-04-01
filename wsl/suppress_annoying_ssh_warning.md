# Suppress annoying SSH warning

When I use SSH under WSL for IPv6 hosts, I get the following warning.

```
setsockopt IPV6_TCLASS 16: Operation not permitted:
```

This can be suppressed by editing your `~/.ssh/config`

Add `AddressFamily inet` for all hosts or the hosts using IPv6.

## Resources and References

- [GitHub: Microsoft WSL, issue 1869](https://github.com/Microsoft/WSL/issues/1869)
