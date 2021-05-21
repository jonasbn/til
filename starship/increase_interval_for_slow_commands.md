# Increase Interval for Slow Commands

If you commands take extra long time and `starship` complains, you can increase the interval
`starship` waits for the command before complaining.

Specify this before any of the sections:

```toml
command_timeout = 1000
```

The default timeout is 500 milliseconds and you have to specify the interval in milliseconds.

## Resources and References

1. [starship: configuration](https://starship.rs/config/#prompt)
