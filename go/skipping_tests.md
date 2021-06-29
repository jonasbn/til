# Skipping Tests

The Go testing framework and toolchain has a nifty facility, where you can skip tests, if you do not want them to be a part of every run.

Let say we have a basic implementation

```go
package shorttest

import (
    "fmt"
    "time"
)

func DoUnimportantStuff() uint8 {
    fmt.Println("Doing unimportant stuff")

    time.Sleep(10 * time.Second)

    return 1
}

func DoImportantStuff() uint8 {
    fmt.Println("Doing important stuff")

    return 1
}
```

And we have a corresponding test suite:

```go
package shorttest

import "testing"

func TestImportant(t *testing.T) {
    got := DoImportantStuff()
    if got != 1 {
        t.Errorf("Important stuff not correct, needed %d", got)
    }
}

func TestUnimportant(t *testing.T) {
    if testing.Short() {
        t.Skip("skipping test in short mode.")
    } else {
        got := DoUnimportantStuff()
        if got != 1 {
            t.Errorf("Unimportant stuff not correct, needed %d", got)
        }
    }
}
```

When we are developing and want fast feedback, we do not want to wait for the long running and unimportant test to finish, but we are VERY interested in getting feedback on our important function as fast as possible.

When we just test we will observe waiting time

```bash
$ go test
Doing important stuff
Doing unimportant stuff
PASS
ok      shorttest   10.364s
```

We can then skip the execution of the unimportant tests by executing our test suite with the `--short` flag.

```bash
❯ go test --short
Doing important stuff
PASS
ok      shorttest   0.116s
```

We just have to remember to add the handling of `--short` via `testing.Short()` in the non-critical and long running tests.

## Resources and References

1. [Go Command: Testing Flags](https://golang.org/cmd/go/#hdr-Testing_flags)
1. [Go Package testing: Skipping](https://golang.org/pkg/testing/#hdr-Skipping)
