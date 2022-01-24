# Test Main Function

I picked up this practice from this marvelous [blog post][MALSAM] by Johannes Malsam.

The idea is to move the _main_ code out of the `main` function and use the `main` function as a wrapper for something you can test.

`main.go`

```go
package main
import (
    "flag"
    "fmt"
    "io"
    "os"
)
func main() {
    // I'm ok with not testing this call
    os.Exit(realMain())
}
func realMain() int {
    name := flag.String("name", "", "Your Name")
    flag.Parse()
    if *name == "" {
        fmt.Printf("Missing flag -name\n")
        return 1
    }
    fmt.Printf("Hi %v\n", *name)
    return 0
}
```

In the above example, the `realMain` function wraps `main`.

`realMain` returns integers, which are then handles as exit codes.

The test file (`main_test.go`) could look as follows:

```go
package main

import (
    "flag"
    "os"
    "testing"
)

func TestFlags(T *testing.T) {
    // We manipuate the Args to set them up for the testcases
    // After this test we restore the initial args
    oldArgs := os.Args
    defer func() { os.Args = oldArgs }()

    cases := []struct {
        Name           string
        Args           []string
        ExpectedExit   int
        ExpectedOutput string
    }{
        {"flags set", []string{"-name", "johannes"}, 0, "Hi johannes\n"},
        {"flags not set", []string{"test"}, 1, "Missing flag -name\n"},
    }

    for _, tc := range cases {
        // this call is required because otherwise flags panics,
        // if args are set between flag.Parse call
        flag.CommandLine = flag.NewFlagSet(tc.Name, flag.ExitOnError)
        // we need a value to set Args[0] to cause flag begins parsing at Args[1]
        os.Args = append([]string{tc.Name}, tc.Args...)
        actualExit := realMain()
        if tc.ExpectedExit != actualExit {
            T.Errorf("Wrong exit code for args: %v, expected: %v, got: %v",
                tc.Args, tc.ExpectedExit, actualExit)
        }
    }

}
```

I have used this for a few of my small projects for learning Go:

- [github.com/jonasbn/punyencode][punyencode]
- [github.com/jonasbn/punydecode][punydecode]
- [github.com/jonasbn/punycode][punycode]

I have not yet _cracked the nut_ of how to test reading from `STDIN`, so I am _pondering_ using [Bats][BATS]

## Resources and References

- [Blog post: Test the main function in Go by Johannes Malsam][MALSAM]

[MALSAM]: https://mj-go.in/golang/test-the-main-function-in-go
[BATS]: https://github.com/bats-core
[punyencode]: https://github.com/jonasbn/punyencode
[punydecode]: https://github.com/jonasbn/punydecode
[punycode]: https://github.com/jonasbn/punycode
