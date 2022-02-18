# Read From STDIN

**Go** is good for small command line utilities. In my process to learn **Go** I wanted to write some small command line utilities so I thought about what command line utilities I was missing...

I used to work with DNS so I decided that the process of opening a browser to find a punycode converter and convert a string to or from punycode, should be done on the command line. I had some **Perl** utilities, so I decided to port these to **Go**.

I found this snippet on [Yourbasic.org/golang][YOURBASIC]

```go
scanner := bufio.NewScanner(os.Stdin)
for scanner.Scan() {
    fmt.Println(scanner.Text())
}

if err := scanner.Err(); err != nil {
    log.Println(err)
}
```

I implemented some utilities ([punydecode][punydecode] and [punyencode][punyencode]), but after some afterthought I boiled the two into one: [punycode][punycode], since [punycode][wikipedia] is easy to identify due to the prefix: `xn--`, so you could do with a single utility.

Since I wanted my utility to both support a string argument and `STDIN`, I made the following construct:

```go
    argsWithoutProg := os.Args[1:]

    var argString string

    if len(argsWithoutProg) <= 0 {
        scanner := bufio.NewScanner(os.Stdin)

        for scanner.Scan() {
            argString = scanner.Text()
        }

        if err := scanner.Err(); err != nil {
            log.Println(err)
            return 2
        }
    } else {
        argString = os.Args[1] // we only take a single parameter, the string to process
    }
```

An issue I have not been able to address it how you test reading from `STDIN` in a **Go** test suite, I could use [**Bats**][bats] or similar, but that would not integrate as well as expected.

## Resources and References

1. [Yourbasic.org/golang: Read a file (stdin) line by line][YOURBASIC]
1. [Go standard library: os - Variables](https://pkg.go.dev/os#pkg-variables)
1. [GitHub: punydecode][punydecode]
1. [GitHub: punyencode][punyencode]
1. [GitHub: punycode][punycode]
1. [Bats][bats]

[YOURBASIC]: https://yourbasic.org/golang/read-file-line-by-line/
[punydecode]: https://github.com/jonasbn/punydecode
[punyencode]: https://github.com/jonasbn/punyencode
[punycode]: https://github.com/jonasbn/punycode
[wikipedia]: https://en.wikipedia.org/wiki/Punycode
[bats]: https://github.com/bats-core
