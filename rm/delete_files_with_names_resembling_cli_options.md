# Delete files with_names resembling cli options

I have been accomplishing this by using **Perl's** `unlink`, but there is a much simpler solution as pointed out to me by @larsbalker via Twitter.

Use: `--`, which terminates the interpretation of commandline flags/options

`$ rm -- -v`

Thanks @larsbalker

## References:

- [Twitter](https://twitter.com/jonasbn/status/966336534835269637)
