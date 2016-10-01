Test::Pretty

[Test::Pretty](https://metacpan.org/module/Test::Pretty) is a nifty output prettifier for unit-tests for Perl development.

If you do not see the expected output and the nice UTF-8 checkmark is replaced with an 'o', you need to check your terminal settings. Test::Pretty relies on Term::Encoding, which again uses I18N::Langinfo. So make sure that your locale settings lets Test::Pretty aware of UTF-8.

This is a basic test of whether you can render the checkmark:

```bash
$ perl -e 'binmode(STDOUT, ":utf8"); print "\x{2713}\n";'
✓
```

The following test tells you what I18N::Langinfo resolves:

```bash
$ perl -MI18N::Langinfo -e 'print I18N::Langinfo::langinfo(I18N::Langinfo::CODESET())."\n"'
UTF-8
```

I18N::Langinfo was first released with perl v5.7.3

The following test tells you what Term::Encoding resolves:

```bash
$ perl -MTerm::Encoding -e 'print Term::Encoding::term_encoding()."\n"'
utf-8
```

Make sure your terminal is supporting UTF-8 and that your locale does.

- [Demonstration of Test::Pretty with prove](http://blog.64p.org/entry/2012/11/07/163100)
- [Yet another blog post on Test::Pretty](http://blog.kablamo.org/2014/05/08/test-pretty/)
- [MetaCPAN](https://metacpan.org/module/Test::Pretty)
