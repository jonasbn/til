# Reading benchmark results

Go has benchmarking capabilities as part of it's standard toolchain.

If you want to do a benchmark of your current Go programming project:

```bash
$ go test -bench . -count 3
goos: darwin
goarch: amd64
pkg: twofer
BenchmarkShareWith-8  14216751  81.7 ns/op
BenchmarkShareWith-8  13949208  81.1 ns/op
BenchmarkShareWith-8  14090535  82.4 ns/op
PASS
ok      twofer    3.769s
```

_NB: I have condensed the output a bit for readability, by collapsing excessive whitespace_.

It does require that the test suite has a benchmarking function.

This runs our test suite and benchmarks it, with 3 iterations, specified by the `-count` parameter.

As you can read from the example output.

- 3 iterations are run
- First column is the test run, which points to a function in the `two_fer_test.go`
- Second column is the amount of times the test was run
- Third column is the measured time and yes `ns` is [nanoseconds](https://en.wikipedia.org/wiki/Nanosecond)

We both specify a number of iterations, but the test suite does an internal count, I have quoted the explanation from [the official documentation][pkgtesting]:

> The benchmark function must run the target code b.N times. During benchmark execution, b.N is
> adjusted until the benchmark function lasts long enough to be timed reliably.

Please see the official documentation for more information.

Now if you want even more detail, you can also get numbers on memory allocation using the `-benchmem` flag. There are plenty of flags, [check the official documentation][testingflags] for a listing.

```bash
$ go test -bench . -benchmem -count 3
goos: darwin
goarch: amd64
pkg: twofer
BenchmarkShareWith-8  14013910  82.4 ns/op  0 B/op  0 allocs/op
BenchmarkShareWith-8  14102596  81.7 ns/op  0 B/op  0 allocs/op
BenchmarkShareWith-8  14164332  81.1 ns/op  0 B/op  0 allocs/op
PASS
ok      twofer    3.873s
```

_NB: I have condensed the output a bit for readability, by collapsing excessive whitespace_.

This runs our test suite again and benchmarks it, with 3 iterations, but outputs more information.

_Since I was unable to understand the output, I had to ask around and I received the following explanation_. Thanks to **mzi** from the Gopher slack for the explanation.

> B/op is how many bytes were allocated per iteration, and allocs/op is how many allocations were
> made. (per iteration)

The first 3 columns are the ones from the basic benchmark. So with the `--benchmem` flag, two more columns are added:

- Fourth column is the number of _extra_ bytes allocated per iteration
- Fifth column is the number of _extra_ allocations made per iteration

And finally thanks to **superstas** at Exercism.io for pushing me into benchmarking my first real Go solution.

To describe more of what I learned, lets examine my solution from [Exercism.io][Exercism.io].

```go
package twofer

func ShareWith(name string) string {
    if name == "" {
        name = "you"
    }

    return "One for " + name + ", one for me."
}
```

_NB: I have condensed the output a bit for readability, by removing inline documentation_.

This was the optimized solution, as pointed out by **superstas** could be made simpler and less expernsive resource wise.

The solution proposal he was giving feedback on was this one:

```go
package twofer

import "fmt"

func ShareWith(name string) string {
    if name == "" {
        name = "you"
    }

    return fmt.Sprintf("One for %s, one for me.", name)
}
```

_NB: I have condensed the output a bit for readability, by removing inline documentation_.

If we benchmark this you can compare the numbers:

```bash
$ go test -bench . -benchmem -count 3
goos: darwin
goarch: amd64
pkg: twofer
BenchmarkShareWith-8  2691262  443 ns/op  144 B/op  6 allocs/op
BenchmarkShareWith-8  2716256  443 ns/op  144 B/op  6 allocs/op
BenchmarkShareWith-8  2702143  447 ns/op  144 B/op  6 allocs/op
PASS
ok      twofer    5.207s
```

_NB: I have condensed the output a bit for readability, by collapsing excessive whitespace_.

As pointed out by **superstas** use of Go's `fmt` package comes at a certain price and in this case a basic concatenation would suffice as demonstrated in the example with the optimized solution.

With Go benchmarking at the tip of your fingers, you can gain insights on your code, read the documentation and start experimenting and perhaps even optimizing.

## References

- [Exercism.io](https://exercism.io/)
- [My exercism.io "two-fer" solution](https://exercism.io/tracks/go/exercises/two-fer/solutions/670e02e265634d3ab83821b0649f83c7)
- [Gophers Slack](https://invite.slack.golangbridge.org/)
- [Go package: "testing"][pkgtesting]
- [Go command: Testing flags][testingflags]

[pkgtesting]: https://golang.org/pkg/testing/
[testingflags]: https://golang.org/cmd/go/#hdr-Testing_flags
