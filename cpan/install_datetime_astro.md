# Install DateTime::Astro

I am using [DateTime::Astro][ASTRO] for [Date::Holidays::CN][CN] via [DateTime::Calendar::Chinese][CALENDAR] which again uses [DateTime::Event::Chinese][EVENT], which is included in [Task::Date::Holidays][TASK], which is a development helper distribution for [Date::Holidays][HOLIDAYS].

The [DateTime::Astro][ASTRO] distribution requires:

- GMP a free C library for arbitrary precision arithmetic, operating on signed integers, rational numbers, and floating-point numbers
- MPFR a C library for multiple-precision floating-point computations with correct rounding

Both can be installed via **Homebrew**

- `brew install gmp`
- `brew install mpfr`

In addition I need to set the following two environment variables, which [DateTime::Astro][ASTRO] is looking for: `$MPFR_HOME` and `$GMP_HOME`.

These can be set like this:

```zsh
export MPFR_HOME="/opt/homebrew/opt/mpfr"
```

```zsh
export GMP_HOME="/opt/homebrew/opt/gmp"
```

When this is in place I can do:

```zsh
perl Build.PL && ./Build && ./Build test && ./Build install
```

And I am good to go.

Now I just need to be able to _redo_ this my toolchain, like GitHub Actions etc.

## Resources and References

- [Date::Holidays][HOLIDAYS]
- [Task::Date::Holidays][TASK]
- [Date::Holidays::CN][CN]
- [DateTime::Calendar::Chinese][CALENDAR]
- [DateTime::Event::Chinese][EVENT]
- [DateTime::Astro][ASTRO]
- [GMP][GMP]
- [MPFR][MPFR]

[TASK]: https://metacpan.org/pod/Task::Date::Holidays
[HOLIDAYS]: https://metacpan.org/pod/Date::Holidays
[ASTRO]: https://metacpan.org/pod/DateTime::Astro
[EVENT]: https://metacpan.org/pod/DateTime::Event::Chinese
[CN]: https://metacpan.org/pod/Date::Holidays::CN
[GMP]: https://gmplib.org/
[MPFR]: https://www.mpfr.org/
[CALENDAR]: https://metacpan.org/pod/DateTime::Calendar::Chinese
