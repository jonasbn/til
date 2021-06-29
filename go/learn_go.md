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

We can run our go program:

```bash
$ go run helloworld.go
Hello, World!
```

Or we can build with an explicit build step, providing us with an executable, which can then be run:

```bash
$ go build helloworld.go
$ ./helloworld
Hello, World!
```

A variation of this implementation of [hello world][helloworld], can be found at [the official Go website][goorg].

I can recommend taking [the tour of Go][gotour], which gives a brief overview of the Go language and this brief introduction on [how to write Go code][gohowto] will really get you going.

Anyway lets break down our example and process for the above example.

**Line 1**: is a comment, I have just put the suggested file name for later use

**Line 2**: a Go file should always contain a package

**Line 3**: Whitespace is insignificant, but improves readability if used widely, this is however not Go specific

**Line 4**: We import [the package `fmt`][gopkgfmt], pronounced _fumpt_

We can import all the packages we need, the recommendation for importing several packages is the following construct:

```go
import (
    "fmt"
    "math"
)
```

Actually tools like `golint` will help you out with this automatically, but let us save that for later.

**Line 6**: This is function declaration

Just like in C, the `main` function is special it acts as the entry point to our executable.

In general functions can take input (parameters) and return values. `main` is special and does not take any parameters and does as default not return anything, which makes it _really hard_ to test (do read [this post](https://mj-go.in/golang/test-the-main-function-in-go) on the topic), that aside, lets have a look at go functions in general.

A function with no parameters and no return values (just like `main`), would have the following signature:

```go
func f() {...}
```

A function with a single parameter:

```go
func f(number int) {}
```

Two parameters and a return value:

```go
fun f(operand1, operand2 int) int {}
```

Two parameters and a two return values:

```go
fun f(operand1, operand2 int) (int, int) {}
```

There are more variations to function declarations, do checkout the documentation or a cheatsheet.

Anyway to set us back a bit, some would say that we did this the wrong way around, we _should_ have written tests first.

So lets add some tests, so make sure our "hello world" implementation in Go works as expected.

This requires that we dwelve into Go modules and Go testing and as stated earlier testing `main` is _hard_.

So lets structure our code so we can test it more easily.

```go
package main

import (
    "fmt"
)

func main() {
    fmt.Printf("%s", HelloWorld())
}

// HelloWorld returns universal programming language greeting in english
func HelloWorld() string {
    return "Hello, World!"
}
```

And we implement a test suite in a file: `main_test.go`

```go
package main

import "testing"

func TestHelloWorld(t *testing.T) {
    expected := "Hello, World!"
    if observed := HelloWorld(); observed != expected {
        t.Fatalf("HelloWorld() = %v, want %v", observed, expected)
    }
}
```

Now lets go over the test _suite_ in this file.

Line 1: defineds the same package as our `helloworld.go` (above)

Line 3: imports the package [`testing`][gopkgtesting]

Line 5-10: implements a test function, just as the function I described and implemented for the main body of our program.

The funtion is named `TestHelloWord` and it tahes the following arguments:

- `t`. which is a pointer of the type: `testing.T`

Next line sets up our expected result, the string: `Hello, World!`.

The following line executes our `HelloWorld` function and tests if we our return value is not matching our expected result from the previous line.

If it does not match we fail the test using `t.Fatalf` and output some diagnostics, to help us address potential issues in our implementation.

This is not the case of this vary basic test.

When doing `go test` we are however met with and error `cannot import "main`

So we can tell our go toolchain that we are working on a module

```bash
go mod init helloworld
```

This will create a file: `go.mod`, with the following contents:

```go
module helloworld

go 1.16
```

And now we can run out test

```bash
go test
```

The `go.mod` file, is for our Go toolchain.

Line 1: tells us the name of our module

Line 3: specifies the version of our Go use for our module

There are plenty of awesome resources to get you started with Go, I can really recommend the following articles:

- [Learn Go with Tests][gotdd], which outlines how to structure you Go projects, so you get a sane foundation supporting automated testing, even if you are not into test-driven development ([TDD][tdd]).

- Check out a proposal for a [Go Developer Roadmap][godevroadmap2020] for learning Go in 2020
- Or you could learn fundamental [Algorithms with Go][algo]
- IF you like me is a complete _n00b_ consider following the [Go track on Exercism.io][exercism] or [the Go katas on Codewars.com][codewars]

I will continue my journey and added more TILs on different aspects of Go programming and learning Go - good luck and have fun...

## Resources and References

1. [A tour of Go][gotour]
1. [How to write Go code](https://golang.org/doc/code.html)
1. [Learn Go with Tests][gotdd]
1. [Effective Go][gohowto]
1. [Go go-to guide](https://yourbasic.org/golang/)
1. [Official Go Website][goorg]

1. [Go Developer Roadmap 2020](godevroadmap2020)
1. [Algorithms with Go][algo]
1. [Go Standard Packages][gostdpkg]

1. [StackOverflow: "Go: Meaning of the 'fmt' package acronym"](https://stackoverflow.com/questions/23597165/go-meaning-of-the-fmt-package-acronym)

[goorg]: https://golang.org/
[gotour]: https://tour.golang.org/welcome/1
[gohowto]: https://golang.org/doc/code.html
[algo]: https://algorithmswithgo.com/
[godevroadmap2020]: https://github.com/Alikhll/golang-developer-roadmap
[goplayground]: https://play.golang.org/
[gostdpkg]: https://golang.org/pkg/
[helloworld]: https://en.wikipedia.org/wiki/%22Hello%2C_World!%22_program
[codewars]: https://www.codewars.com/?language=go
[exercism]: https://exercism.io/tracks/go
[gotdd]: https://quii.gitbook.io/learn-go-with-tests/
[tdd]: https://en.wikipedia.org/wiki/Test-driven_development
[gopkgfmt]: https://golang.org/pkg/fmt/
[gopkgtesting]: https://golang.org/pkg/testing/
