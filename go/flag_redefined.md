# Flag redefined error

When you are doing a command line application in Go and you start to implement test (see: "[Test Main Function](test_main_function.md)"), you might observe errors indicating command line flags being redefined.

I have observed this for `--verbose`, when my application: [`stevedore`][STEVEDORE] implements a `--verbose` flag. And the reason seems to be that `go test` also supports `--verbose`

The fix is easy, I located this recipe from a blog post by Max Chadwick: "[Preventing Flag Conflicts in Go][MAX]".

The solution is to add:

```go
flag.CommandLine = flag.NewFlagSet(os.Args[0], flag.ExitOnError)
```

Do see the post by Max for a more explicit explantion.

## Resources and References

- [Go flag package][FLAG]
- [Blog post: Preventing Flag Conflicts in Go][MAX]
- [Test Main Function](test_main_function.md)
- [GitHub: stevedore][STEVEDORE]

[MAX]: https://maxchadwick.xyz/blog/preventing-flag-conflicts-in-go
[FLAG]: https://pkg.go.dev/flag
[STEVEDORE]: https://github.com/jonasbn/stevedore
