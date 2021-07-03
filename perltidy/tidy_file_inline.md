# Tidy a file inline

Perltidy is a nifty _prettifier_ or _pretty printer_ as it was called back in the day. I always forget the inline option.

```bash
perltidy --nostandard-output --warning-output --backup-and-modify-in-place myperlfile.pl
```

Do note that the inline modification does not take place if you input are from:

- standard in
- going to standard out
- or the `--html` flag is provided

From the documentation:

> A -b flag will be ignored if input is from standard input or goes to standard output, or if the -html flag is set.

Use the specify the `--nostandard-output` and work on files.

The short form is:

```bash
perltidy -nst -w -b myperlfile.pl
```

## Using a Profile

You can specify your own Perl::Tidy configuration, if you are not using the default configuration

```bash
perltidy --nostandard-output --warning-output --backup-and-modify-in-place --pro=t/perltidyrc myperlfile.pl
```

And the short form:

```bash
perltidy -nst -w -b --pro=t/perltidyrc myperlfile.pl
```

## Using perltidy in a pre-commit hook

You can use `perltidy` in a pre-commit hook.

I recommend the [pre-commit] framework and the existing hooks.

Please see my [TIL: use pre-commit][til].

## Resources and References

- [Perl::Tidy website](http://perltidy.sourceforge.net/perltidy.html)
- [MetaCPAN: Perl::Tidy](https://metacpan.org/pod/Perl::Tidy)
- [GitHub: perltidy](https://github.com/perltidy/perltidy)
- [Wikipedia: prettyprint](https://en.wikipedia.org/wiki/Prettyprint)
- [pre-commit website][pre-commit]
- [GitHub: pre-commit-perl][pre-commit-perl]
- [TIL: use pre-commit][til]

[pre-commit]: https://pre-commit.com/
[pre-commit-perl]: https://github.com/henryykt/pre-commit-perl
[til]: http://jonasbn.github.io/til/git/use_pre-commit.html
