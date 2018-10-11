# Run a single test

[Dist::Zilla](https://metacpan.org/pod/distribution/Dist-Zilla/lib/Dist/Zilla.pm) is awesome, but sometimes you need to run a single test,
this can be accomplished the following way:

```bash
$ dzil run --nobuild prove -lv t/my-test.t
```

## References

- [Blog of Olaf Alders](http://blogs.perl.org/users/olaf_alders/2014/06/how-to-run-a-single-test-via-distzilla.html)
