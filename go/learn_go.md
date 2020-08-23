# Learn Go

Let's _go_

You can try this out at the [Go playground][goplayground] or install the Go compiler on your local machine, I assume and prefer the latter.

```go
// helloworld.go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

```bash
$ go run helloworld.go
Hello, World!
```

Or with an explicit build step:

```bash
$ go build helloworld.go
$ ./helloworld
Hello, World!
```

A variation of this implementation of [hello world](https://en.wikipedia.org/wiki/%22Hello%2C_World!%22_program), can be found at [the official Go website][goorg].

I can recommend taking [the tour of Go][gotour], which gives a brief overview of the Go language and this brief introduction on [how to write Go code][gohowto] will really get you going.

Anyway lets break down our example and process for the above example.

**Line 1**: is a comment, I have just put the suggested file name for later use

**Line 2**: a Go file should always contain a package

**Line 3**: Whitespace is insignificant, but improves readability if used widely, this is however not Go specific

**Line 4**: We import [the package `fmt`](https://golang.org/pkg/fmt/), pronounced _fumpt_

We can import all the packages we need, the recommendation for importing several packages is the following construct:

```go
import (
    "fmt"
    "math"
)
```

Actually tools like `golint` will help you out with this automatically, but let us save that for later.

**Line 6**: This is function declaration

TODO: Add note on main function

The `main` function, is indication of where there executable should start.

TODO: Add notes on function signatures

No parameters:

```go
func main() {...}
```

One parameter:

```go
func main(number int) {}
```

Two parameters and a return value

```go
fun main(operand1, operand2 int) int {}
```

Two parameters and a two return values

```go
fun main(operand1, operand2 int) (int, int) {}
```

There are more variations to function declarations, do checkout the documentation or a cheatsheet.

Anyway to set us back a bit, some would say that we did this the wrong way around, we should have written tests first.

So lets add some tests, so make sure our "hello world" implementation works as expected.

This requires that we dwelve into Go modules and Go testing.

TODO: Add notes on testing in Go

Now that you somewhat up and running with Go, some next steps could be:

- Check out a proposal for a [Go Developer Roadmap][godevroadmap2020] for learning Go in 2020
- Or you could learn fundamental [Algorithms with Go][algo]
- IF you like me is a complete _n00b_ consider following the [Go track on Exercism.io](https://exercism.io/tracks/go) or [the katas on Codewars.com](https://www.codewars.com/?language=go)

I will continue my journey and added more TILs on different aspects of Go programming and learning Go - good luck and have fun...

## References

- [A tour of Go][gotour]
- [How to write Go code](https://golang.org/doc/code.html)
- [Effective Go][gohowto]
- [Go go-to guide](https://yourbasic.org/golang/)
- [Official Go Website][goorg]

- [Go Developer Roadmap 2020](godevroadmap2020)
- [Algorithms with Go][algo]

- [StackOverflow: "Go: Meaning of the 'fmt' package acronym"](https://stackoverflow.com/questions/23597165/go-meaning-of-the-fmt-package-acronym)

[goorg]: https://golang.org/
[gotour]: https://tour.golang.org/welcome/1
[gohowto]: https://golang.org/doc/code.html
[algo]: https://algorithmswithgo.com/
[godevroadmap2020]: https://github.com/Alikhll/golang-developer-roadmap
[goplayground]: https://play.golang.org/
