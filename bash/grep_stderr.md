# Grep STDERR

You can grep on STDERR stream of data using a anonymous pipe.

```bash
$ somecommand 2> >(grep -i STRING)
```

## References

- [StachExchange Unix & Linux: How to grep standard error stream (stderr)?](https://unix.stackexchange.com/questions/3514/how-to-grep-standard-error-stream-stderr)
