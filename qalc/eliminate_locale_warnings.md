# Eliminate Locale Warnings

If you look at [my example](calculate_download_time.html) for using `qalc` to calculate download time

It _spews_ a lot of warnings on my computer like so:

```bash
$ qalc "145Gbyte / 1.5Mibit/second to day"
Warning: Failed to set locale category LC_NUMERIC to en_DK.
Warning: Failed to set locale category LC_TIME to en_DK.
Warning: Failed to set locale category LC_COLLATE to en_DK.
Warning: Failed to set locale category LC_MONETARY to en_DK.
Warning: Failed to set locale category LC_MESSAGES to en_DK.
Warning: Failed to set locale category LC_NUMERIC to en_DK.
Warning: Failed to set locale category LC_TIME to en_DK.
Warning: Failed to set locale category LC_COLLATE to en_DK.
Warning: Failed to set locale category LC_MONETARY to en_DK.
Warning: Failed to set locale category LC_MESSAGES to en_DK.
(145 * gigabyte) / (1.5 * (mebibit / second)) = approx. 8 d + 12 h + 51 min + 48.138021 s
```

To eliminate this set `LC_ALL` to `C` or `en_US`:

```bash
# temporarily
$ LANG="en_US" qalc "145Gbyte / 1.5Mibit/second to day"
(145 * gigabyte) / (1.5 * (mebibit / second)) = approx. 8 d + 12 h + 51 min + 48.138021 s
```

To set it permanently add it to `.bash_profile``

```bash
export LANG="en_US"
```

## References

- [Blog post by Remi Bergsma](https://blog.remibergsma.com/2012/07/10/setting-locales-correctly-on-mac-osx-terminal-application/)
