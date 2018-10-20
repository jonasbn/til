# Pipe Output to less

```bash
$ curl -s example.com 2>&1 | less
```

1. Use `-s` to silence the progress indicator
1. Redirect STDERR to STDOUT with `2>&1`

Alternatively the longform:

```bash
$ curl --silent example.com 2>&1 | less
```

## References

- [StackOverflow](https://stackoverflow.com/questions/5427454/how-do-i-pipe-or-redirect-the-output-of-curl-v)
