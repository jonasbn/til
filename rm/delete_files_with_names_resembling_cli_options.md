# Delete files with_names resembling cli options

I have been accomplishing this by using **Perl's** `unlink`, but there is a much simpler solution as pointed out to me by @larsbalker via Twitter.

If you by accident create a file named: `-v` use: `--`, which terminates the interpretation of command line flags/options

`$ rm -- -v`

Thanks @larsbalker

The Perl solution is:

```perl
perl -e "unlink '-v'";
```

## References

- [Twitter](https://twitter.com/jonasbn/status/966336534835269637)
