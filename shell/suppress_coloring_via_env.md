# Suppress Coloring via Environment Variables

On several occasions I have stumbled on to different ways to suppress coloring in the terminal.

Two _competing_ ways to handle coloring in the terminal is to use the `NO_COLOR` environment variable or the `CLICOLOR` and associated environment variables.

The two however have different approaches to the problem.

Where `NO_COLOR` can be set to suppress color output, `CLICOLOR` can be set to force color output and disable color output.

## Our Contestants

### NO_COLOR

If `$NO_COLOR` is set, then the output should not contain any color.

Command line flags and configuration parameters that are intended to control color output this should override `$NO_COLOR`.

This is the approach described on the [NO_COLOR website][NO_COLOR].

To support this in **Go**, the following code can be used:

```go
package main

import (
    "fmt"
    "os"
)

func main() {
    _, ok := os.LookupEnv("NO_COLOR")

    if ok {
        fmt.Println("NO_COLOR is set")
    } else {
        fmt.Println("NO_COLOR is not set")
    }
}
```

In Go if a environment variable is not set, then `os.Getenv()` returns an empty string, so we need to use: `os.LookupEnv()`.

Compared to the `$CLICOLOR` approach, this is a very basic approach. And the `NO_COLOR` approach does not specify handling of the value of the environment variable, just it's presence.

### CLICOLOR

If `$CLI_COLOR` is different from `0`, then the output be colorized, if supported by the application and the terminal.

If the input is piped, then the output should not contain color.

If `$CLI_COLOR` is set to `0`, then the output should not contain color.

If `$CLI_COLOR_FORCE` is different from `0`, then the output should contain color, , if supported by the application and the terminal.

This is the aproach taken by the [CLICOLOR website][CLI_COLOR]. The website does not specify command line flags and configuration parameters that are intended to control color.

It does however specify that the `$CLICOLOR_FORCE` environment variable should override `$CLICOLOR` and piped output, should not be colorized.

```go
package main

import (
    "fmt"
    "os"
)

func main() {
    clicolor := os.Getenv("CLICOLOR")
    clicolor_force := os.Getenv("CLICOLOR_FORCE")

    // REF: https://stackoverflow.com/questions/43947363/detect-if-a-command-is-piped-or-not
    fi, _ := os.Stdin.Stat()

    if fi.Mode()&os.ModeCharDevice == 0 {
        fmt.Println("STDIN is not a terminal")
    } else {
        fmt.Println("STDIN is a terminal")
    }

    if clicolor == "0" || clicolor == "" {
        fmt.Println("CLICOLOR is not set")

        if clicolor_force == "0" || clicolor_force == "" {
            fmt.Println("CLICOLOR_FORCE is not set")
        } else {
            fmt.Println("CLICOLOR_FORCE is set")
        }

    } else {
        fmt.Println("CLICOLOR is set")
    }
}
```

## Combining the Two

Based on the above, we can combine the two approaches, even though they differ in perspective.

```go
package main

import (
    "fmt"
    "os"
)

func main() {
    if color() {
        fmt.Println("Color is enabled")
    } else {
        fmt.Println("Color is disabled")
    }
}

func color() bool {
    if nocolor() {
        return false
    } else if clicolor() {
        return true
    } else {
        return false
    }
}

func nocolor() bool {
    _, ok := os.LookupEnv("NO_COLOR")

    if ok {
        fmt.Println("NO_COLOR is defined")
        return true
    } else {
        fmt.Println("NO_COLOR is not defined")
        return false
    }
}

func clicolor() bool {
    clicolor := os.Getenv("CLICOLOR")
    clicolor_force := os.Getenv("CLICOLOR_FORCE")

    // REF: https://stackoverflow.com/questions/43947363/detect-if-a-command-is-piped-or-not
    fi, _ := os.Stdin.Stat()

    if fi.Mode()&os.ModeCharDevice == 0 {
        fmt.Println("STDIN is from a pipe")
        return false
    } else {
        fmt.Println("STDIN is a terminal")
    }

    if clicolor == "0" || clicolor == "" {
        fmt.Println("CLICOLOR is not set")

        if clicolor_force == "0" || clicolor_force == "" {
            fmt.Println("CLICOLOR_FORCE is not set")
            return false
        } else {
            fmt.Println("CLICOLOR_FORCE is set")
            return true
        }

    } else {
        fmt.Println("CLICOLOR is set")
        return true
    }
}
```

## Resources and References

- [NO_COLOR website][NO_COLOR]
- [CLICOLOR website][CLI_COLOR]
- [stackoverflow.com: Detect if a command is piped or not][stackoverflow.com]

[stackoverflow.com]: https://stackoverflow.com/questions/43947363/detect-if-a-command-is-piped-or-not
[NO_COLOR]: https://no-color.org/
[CLI_COLOR]: https://bixense.com/clicolors/
