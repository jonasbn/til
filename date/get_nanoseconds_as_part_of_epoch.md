# Get nanoseconds as part of epoch

To get the nanoseconds as part of the epoch time, you can use the following command:

```bash
date +%s%N
1720593252N
```

This does however not work on macOS. On macOS, you can use the following command:

```bash
gdate +%s%N
1720593307223485000
```

**Do note that it is always represented as zeroes.**

The `gdate` command is part of the `coreutils` package. You can install it using Homebrew:

```bash
brew install coreutils
```

## Resources and References

- [StackOverflow: "How to get nanoseconds in bash?"](https://stackoverflow.com/questions/17066250/how-to-get-nanoseconds-in-bash)
