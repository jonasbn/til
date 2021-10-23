# Use gocritic

I come from a background of heavy use of Perl::Critic, so when I fell over `gocritic` and found it an interesting tool.

The installation documentation, does seem completely up to date, since it describes `go get`, which is deprecated in newer Go versions.

I got this invocation to work:

```bash
go install github.com/go-critic/go-critic/cmd/gocritic@latest
```

I install it in my `$HOME` directory in my `GOPATH` and I can use it in all my Go projects.

## Example

Here is a basic example, lifted from the [documentation](https://go-critic.com/overview#ifElseChain-ref) and changed.

```go
package main

func main() {
    cond := 1

    if cond <= 1 {
        // Code A.
    } else if cond >= 2 {
        // Code B.
    } else {
        // Code C.
    }
}
```

And when running `gocritic` with the `check` command

```bash
$ gocritic check main.go
./main.go:8:9: dupBranchBody: both branches in if statement has same body
./main.go:6:2: ifElseChain: rewrite if-else to switch statement
```

This is a very basic and caricatured example, but you get the picture.

## Resources and References

1. [GitHub: go-critic](https://github.com/go-critic/go-critic)
1. [go-critic.com][gocritic.com]

[gocritic.com]: https://go-critic.com/
