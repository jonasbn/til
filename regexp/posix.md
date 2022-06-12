# POSIX Regular Expressions

POSIX regular expression are powerful, but compared to Perl regular expressions they are limited.

For example if you want to negate a filter using when using `grep` you cannot express this unless your pattern is a class.

This command lists all available and installable Perl versions offered by `perlbrew``

```bash
$ perlbrew available

  perl-5.32.0-RC1
   perl-5.30.3
   perl-5.28.3
  perl-5.26.3.tar.bz2
   perl-5.26.3
   perl-5.24.4
i  perl-5.22.4
  perl-5.22.4.tar.bz2
   perl-5.20.3
  perl-5.20.3.tar.bz2
  perl-5.18.4.tar.bz2
   perl-5.18.4
  perl-5.16.3.tar.bz2
   perl-5.16.3
i  perl-5.14.4
  perl-5.14.4.tar.bz2
  perl-5.12.5.tar.bz2
   perl-5.12.5
i  perl-5.10.1
  perl-5.10.1.tar.bz2
i   perl-5.8.9
  perl-5.8.9.tar.bz2
    perl-5.6.2
  perl5.005_03
  perl5.004_05
  cperl-5.29.2
  cperl-5.30.0
  cperl-5.30.0-RC1
```

Since I am not interested in the `*.bz2` listings, I want to filter listing matching this pattern:

```bash
$ perlbrew available | grep --regexp="\.tar\.bz2" --invert-match

  perl-5.32.0-RC1
   perl-5.30.3
   perl-5.28.3
   perl-5.26.3
   perl-5.24.4
i  perl-5.22.4
   perl-5.20.3
   perl-5.18.4
   perl-5.16.3
i  perl-5.14.4
   perl-5.12.5
i  perl-5.10.1
i   perl-5.8.9
    perl-5.6.2
  perl5.005_03
  perl5.004_05
  cperl-5.29.2
  cperl-5.30.0-RC1
  cperl-5.30.0
```

I match the pattern and invert the match using `grep` option.

The above recipe is used in my **Bash** completion for `perlbrew`.

## Resources and References

- [WikiBooks: Regular Expressions/POSIX-Extended Regular Expressions](https://en.wikibooks.org/wiki/Regular_Expressions/POSIX-Extended_Regular_Expressions)
- [GitHub: jonasbn/bash_completion_perlbrew](https://github.com/jonasbn/bash_completion_perlbrew)
