# Parsing Gitignore

The concept of `.gitignore` is great.

For one of my projects I needed something similar and of course there was an implementation on CPAN.

I started out using [Parse::Gitignore][metacpan_pg]. Unfortunately it did not really _solve_ my problem. Luckily there was an alternative, which suited my needs better: [Text::Gitignore][metacpan_tg].

If you want to see my implementation using it in action, check [my Yak project][yak] [implementation in Perl][perl-app-yak].

## Resources and References

- [MetaCPAN: Parse::Gitignore][metacpan_pg]
- [GitHub: Parse::Gitignore][github_pg]
- [MetaCPAN: Text::Gitignore][metacpan_tg]
- [GitHub: Text::Gitignore][github_tg]
- [Yak Project][yak]

[metacpan_pg]: https://metacpan.org/pod/Parse::Gitignore
[github_pg]: https://github.com/benkasminbullock/parse-gitignore
[metacpan_tg]: https://metacpan.org/pod/Text::Gitignore
[github_tg]: https://github.com/vti/text-gitignore
[perl-app-yak]: https://github.com/jonasbn/perl-app-yak
[yak]: https://jonasbn.github.io/yak/
