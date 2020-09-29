# Find out what your perl minimum version requirement is

This can be done quite easily using the magnificent tool: [Perl::MinimumVersion][PMV] by Neil Bowers.

The distribution includes the CLI tool [`perlver`][perlver].

You can use it on a single file:

```bash
± perlver lib/Test/Timer.pm

   ------------------------------------------------
 | file              | explicit | syntax | external |
 | ------------------------------------------------ |
 | lib/Test/Timer.pm | ~        | v5.6.0 | n/a      |
 | ------------------------------------------------ |
 | Minimum explicit version : ~                     |
 | Minimum syntax version   : v5.6.0                |
 | Minimum version of perl  : v5.6.0                |
   ------------------------------------------------
```

Example

Or you can use it on a directory, your distribution for example. Do note that this is not as fast as it is useful.

```bash
$ perlver .

   -----------------------------------------------------------------
 | file                               | explicit | syntax | external |
 | ----------------------------------------------------------------- |
 | t/test-tester.t                    | ~        | v5.6.0 | n/a      |
 | t/time_alert.t                     | ~        | v5.6.0 | n/a      |
 | t/_benchmark.t                     | ~        | v5.5.3 | n/a      |
 | t/Test/Timer/Test.pm               | ~        | v5.6.0 | n/a      |
 | prototypes/benchmark.pl            | ~        | v5.6.0 | n/a      |
 | prototypes/time_ok.pl              | ~        | v5.6.0 | n/a      |
 | prototypes/time_between.pl         | ~        | v5.6.0 | n/a      |
 | prototypes/time_atleast.pl         | ~        | v5.6.0 | n/a      |
 | prototypes/time_atmost.pl          | ~        | v5.6.0 | n/a      |
 | prototypes/list_context.pl         | ~        | v5.6.0 | n/a      |
 | prototypes/time_nok.pl             | ~        | v5.6.0 | n/a      |
 | prototypes/regex.pl                | ~        | v5.6.0 | n/a      |
 | lib/Test/Timer.pm                  | ~        | v5.6.0 | n/a      |
 | lib/Test/Timer/TimeoutException.pm | ~        | v5.6.0 | n/a      |
 | ----------------------------------------------------------------- |
 | Minimum explicit version : ~                                      |
 | Minimum syntax version   : v5.6.0                                 |
 | Minimum version of perl  : v5.6.0                                 |
   -----------------------------------------------------------------
```

And as you can read the minimum is provided to you.

Remember to specify in your minimum requirements in your distribution requirements or similar.

## Resources and References

- [MetaCPAN: Perl::MinimumVersion][PMV]
- [MetaCPAN: perlver][perlver]
- [Blogpost by Neil Bowers: "Specify the min perl version for your distribution"](http://blogs.perl.org/users/neilb/2014/08/specify-the-min-perl-version-for-your-distribution.html)

[PMV]: https://metacpan.org/pod/Perl::MinimumVersion
[perlver]: https://metacpan.org/pod/distribution/Perl-MinimumVersion/script/perlver
