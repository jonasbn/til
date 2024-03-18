# Create Test Coverage Report Using Dist::Zilla

Perl has the magnificent [Devel::Cover][devel], this can be used from [Dist::Zilla][dzil] using the plugin [Dist::Zilla::App::Command::cover][cover]

And then you can just do:

```bash
$ dzil cover
```

And you get your _good old_ coverage report:

```
---------------------------- ------ ------ ------ ------ ------ ------ ------
File                           stmt   bran   cond    sub    pod   time  total
---------------------------- ------ ------ ------ ------ ------ ------ ------
blib/lib/Module/Info/File.pm  100.0  100.0   60.0  100.0  100.0  100.0   97.1
Total                         100.0  100.0   60.0  100.0  100.0  100.0   97.1
---------------------------- ------ ------ ------ ------ ------ ------ ------
```

and a link to the HTML version.

```text
HTML output written to /Users/jonasbn/develop/github/Module-Info-File/.build/D9L1sYL19B/cover_db/coverage.html
done.
```

And on macOS you can then do:

```shell
open /Users/jonasbn/develop/github/Module-Info-File/.build/D9L1sYL19B/cover_db/coverage.html
```

And a browser window will open with a coverage report, you can navigate in and see the coverage of your code.

## References

- [MetaCPAN: Devel::Cover][devel]
- [MetaCPAN: Dist::Zilla][dzil]]
- [MetaCPAN: Dist::Zilla::App::Command::cover][cover]

[devel]: https://metacpan.org/pod/Devel::Cover
[dzil]: https://metacpan.org/pod/Dist::Zilla
[cover]: https://github.com/doherty/Dist-Zilla-App-Command-cover
