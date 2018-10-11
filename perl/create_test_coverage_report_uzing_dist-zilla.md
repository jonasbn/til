# Create Test Coverage Report Using Dist::Zilla

Perl has the magnificent Devel::Cover, this can be used from Dist::Zilla using the plugin [Dist::Zilla::App::Command::cover](https://github.com/doherty/Dist-Zilla-App-Command-cover)

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

```
HTML output written to /Users/jonasbn/develop/github/Module-Info-File/.build/D9L1sYL19B/cover_db/coverage.html
done.
```

## References

- [MetaCPAN](https://github.com/doherty/Dist-Zilla-App-Command-cover)
