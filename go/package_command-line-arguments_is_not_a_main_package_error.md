# "package command-line-arguments is not a main package" error

This error shows up when you try to `go run` a file that has a `func main()`, but doesn't actually declare itself to
be part of `package main`:

```go
package mypackage

func main() {
    // ...
}
```

```bash
$ go run example.go
package command-line-arguments is not a main package
```

`go run` compiles the file into a temporary, throwaway binary it internally calls `command-line-arguments`. Only
`package main` can produce an executable, so if the file declares any other package name, `go run` has nothing it
can actually run.

## Fix: single file, declare it `package main`

```go
package main

func main() {
    // ...
}
```

## Fix: multi-package project, use `go build` instead of `go run`

If the file with `func main()` legitimately imports another package of yours (for example a `main.go` at the module
root importing a sibling `mypackage/` directory), don't reach for `go run` on the non-main package at all. Build the
whole thing and run the resulting binary:

```bash
go build -o myapp main.go
./myapp
```

This only resolves if the project is an actual Go module (`go.mod`) and the import path matches the module path, for
example `import "myproject/mypackage"` inside a module declared as `module myproject` — see
[Working with local packages](working_with_local_packages.md).

## Resources and References

- [GolangTutorial.dev: Fixing the "package command-line-arguments is not a main package" error](https://golangtutorial.dev/tips/fixing-the-package-command-line-arguments-is-not-a-main-package-error-in-golang/)
- [Working with local packages](working_with_local_packages.md)
