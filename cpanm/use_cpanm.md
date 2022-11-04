# Use cpanm

`cpanm` or **App::cpanminus** **cpanminus** for short is a magnificent Perl tool for installing CPAN distributions (or your own distributions).

```bash
$ cpan App::cpanminus
```

If you want to keep a clean install, consider using **local::lib**

If you are [using perlbrew](../perlbrew/install_perlbrew.md) you get cpanminus installed with `perlbrew`.

The author of **App::cpanminus**, Miyagawa, also made [an introduction video][VIDEO].

See also the [Perl GitHub Action][PERLACTION] with `cpanm` for all your GitHub Action needs.

If you want to work with **cpanminus**, in for example Ubuntu, it is also available as a package:

- [cpanm package for Ubuntu][UBUNTU] (focal fossa)

## Resources and References

- [MetaCPAN: cpanm][CPAN]
- [GitHub repository][GITHUB]

[GITHUB]: https://github.com/miyagawa/cpanminus
[CPAN]: https://metacpan.org/pod/distribution/App-cpanminus/bin/cpanm
[PERLACTION]: https://github.com/perl-actions/install-with-cpanm
[UBUNTU]: https://packages.ubuntu.com/focal/cpanminus
[VIDEO]: http://weblog.bulknews.net/post/44086130029/introducing-cpanm-1-6-by-miyagawa
