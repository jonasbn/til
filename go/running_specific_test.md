# Running Specific Test

When your **Go** project test suite grows to a significant size, execution time and output, it is sometimes annoying to have skim all of the output of the other tests and wait for them to complete.

Luckily the **Go** test command, can take an additional parameter, which allows the user to specify what tests to run.

```shell
go test -v run <testname>
```

Lets say we have a basic module `twotests` with two functions, one of them is very time consuming:

```go
package twotests

import (
    "fmt"
    "time"
)

func doSomeOperation() uint8 {
    fmt.Println("Doing operation...")

    return 1
}

func doTimeConsumingOperation() uint8 {
    fmt.Println("Doing time consuming operation...")

    time.Sleep(10 * time.Second)

    return 1
}
```

And our test suite:

```go
package twotests

import "testing"

func TestDoSomeOperation(t *testing.T) {
    got := doSomeOperation()
    if got != 1 {
        t.Errorf("Doing Operation not correct, needed %d", got)
    }
}

func TestDoTimeConsumingOperation(t *testing.T) {
    got := doTimeConsumingOperation()
    if got != 1 {
        t.Errorf("Doing time consuming Operation not correct, needed %d", got)
    }
}
```

We can run the tests:

```shell
go test -v
=== RUN   TestDoSomeOperation
Doing some operation...
--- PASS: TestDoSomeOperation (0.00s)
=== RUN   TestDoTimeConsumingOperation
Doing time consuming operation...
--- PASS: TestDoTimeConsumingOperation (10.00s)
PASS
ok      example.com/jonasbn/twotests    10.681s
```

As you can see our test suite is bugged down by the long execution time for the test suite.

We need to fix something in our _faster_ function, so we need to be able to fix that and get fast feedback while doing so. Perhaps by testing function alone, since we do not want to wait for our slow test in order to get feedback.

Let's tell **go** to run only that test by using `--run`

```shell
go test -v --run TestDoSomeOperation
=== RUN   TestDoSomeOperation
Doing operation...
--- PASS: TestDoSomeOperation (0.00s)
PASS
ok      example.com/jonasbn/twotests    0.110s
```

And as you can see only: `TestDoSomeOperation` is run and `TestDoTimeConsumingOperation` is _skipped_.

All is well.

As we get our feedback, while coding, we come up with a new function and we add tests for this also.

```go
func doAnotherOperation() uint8 {
    fmt.Println("Doing another operation...")

    return 1
}
```

```go
func TestDoAnotherOperation(t *testing.T) {
    got := doAnotherOperation()
    if got != 1 {
        t.Errorf("Doing Operation not correct, needed %d", got)
    }
}
```

We could run all our tests and we **should** to see if we have introduced any regressions, but as our work continue, we need to be not slowed down by the _slower_ function and it's test.

Luckily we can **go** to only run that the tests we need, by providing a regular expression specifying our test names.

```shell
go test -v --run '(Some|Another)'
=== RUN   TestDoSomeOperation
Doing some operation...
--- PASS: TestDoSomeOperation (0.00s)
=== RUN   TestDoAnotherOperation
Doing another operation...
--- PASS: TestDoAnotherOperation (0.00s)
PASS
ok      example.com/jonasbn/twotests    0.147s
```

As you can see we only run: `TestDoSomeOperation` and `TestDoAnotherOperation` and `TestDoTimeConsumingOperation` is _skipped_.

This does require that you have some good naming conventions for your tests, so you can pick and choose, when coding, overall this solves the problem and we can get fast feedback.

Alternatively you can using the built in ability to skip tests, which I wrote about as: ["TIL: Skipping Tests"][tilskiptests].

However when developing, we often need this _power_ at our fingertips and we do not want to apply changes to our code in order to control the run of a test suite.

My recommendation is to use the ability for skipping tests in the test suite for CI tests and the ability for picking tests when coding.

But remember to do full test runs regularly to catch potential regressions.

## Resources and References

- [go command][gocmd]
- ["TIL: Skipping Tests"][tilskiptests]

[gocmd]: https://pkg.go.dev/cmd/go
[tilskiptests]: http://jonasbn.github.io/til/go/skipping_tests.html
