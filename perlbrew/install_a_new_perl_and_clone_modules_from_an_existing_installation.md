# Install a new perl and clone modules from an existing installation

```bash
$ perlbrew clone-modules perl-5.28.1 perl-5.30.0
$ perlbrew switch perl-5.30.0
```

Do note I experienced some _weirdness_ resembling this:

```
Installing 0 modules from v28@op2 to v28@op ...
! Finding Perl on cpanmetadb failed.
--> Working on Perl
Fetching http://cpan.metacpan.org/authors/id/G/GS/GSAR/PerlInterp-0.02.tar.gz ... OK
Configuring PerlInterp-0.02 ... OK
Building and testing PerlInterp-0.02 ... FAIL
```

Ref: [perlbrew issue #637](https://github.com/gugod/App-perlbrew/issues/637)

Updating `perlbrew` to version 0.86 fixed the problem. Check your `perlbrew` version like this:

```bash
$ perlbrew --version
/Users/jonasbn/perl5/perlbrew/bin/perlbrew  - App::perlbrew/0.86
```

## Resources

- [Twitter: @chromatic](https://twitter.com/chromatic_x/status/1131285517511692288)
- [MetaCPAN: perlbrew documentation](https://metacpan.org/pod/distribution/App-perlbrew/script/perlbrew#COMMAND:-CLONE-MODULES)
