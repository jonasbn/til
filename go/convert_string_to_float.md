# Convert String to Float

For [my project for allowed downtime calculation][GITHUB] I needed to convert strings to floats as incoming data from the command line was originally string, but all additional calculations was based on floats.

I found this reference article:

- [Geeksforgeeks: "How to Convert string to float type in Golang?"][GEEKS4GEEKS]

In Go, you need to use the function: `ParseFloat` from the `strconv` package, which is a part of the standard library.

```go
// Golang program to Convert 
// string to float type 
package main 
  
import ( 
    "fmt"
    "strconv"
) 
  
func main() { 
  
    // defining a string a1 
    a1 := "-2.514"
  
    // converting the string a1  
    // into float and storing it 
    // in b1 using ParseFloat 
    b1, _ := strconv.ParseFloat(a1, 8) 
  
    // printing the float b1 
    fmt.Println(b1) 
  
    a2 := "-2.514"
    b2, _ := strconv.ParseFloat(a2, 32) 
    fmt.Println(b2) 
  
    fmt.Println(b1 + b2) 
} 
```

Lifted from:

- [Geeksforgeeks: "How to Convert string to float type in Golang?"][GEEKS4GEEKS]

I ended up with this implementation:

```go
uptime, err := strconv.ParseFloat(arg, 64)
```

Lifted from:

- [GitHub: jonasbn/allowed-downtime-calculator: cli.go](https://github.com/jonasbn/allowed-downtime-calculator/blob/116aac19d89f6173e70dc60cefe9785f5ab83a02/pkg/cli/cli.go#L27)

`ParseFloat` is quite interesting, the second parameter specifies the precision. In my case `64` bit, since the entire code bases uses the type `float64` for representing floats.

From the documentation:

> ParseFloat converts the string s to a floating-point number with the precision specified by bitSize: 32 for float32, or 64 for float64. When bitSize=32, the result still has type float64, but it will be convertible to float32 without changing its value.

I played around with the example in the documentation:

```go
package main

import (
    "fmt"
    "strconv"
)

func main() {
    v := "3.1415926535"
    if s, err := strconv.ParseFloat(v, 8); err == nil {
        fmt.Printf("8-bit: %T, %v\n", s, s)
    }
    if s, err := strconv.ParseFloat(v, 32); err == nil {
        fmt.Printf("32-bit: %T, %v\n", s, s)
    }
    if s, err := strconv.ParseFloat(v, 64); err == nil {
        fmt.Printf("64-bit: %T, %v\n", s, s)
    }
}
```

Which emitted:

```text
8-bit: float64, 3.1415926535
32-bit: float64, 3.1415927410125732
64-bit: float64, 3.1415926535
```

So now I am only a tad more confused than earlier.

Anyway I have tried my calculations with both `32` and `64` conversion and the result is the same.

## Resources and References

- [Geeksforgeeks: "How to Convert string to float type in Golang?"][GEEKS4GEEKS]
- [GitHub: jonasbn/allowed-downtime-calculator][GITHUB]
- [pkg.go.dev: strconv#Parsefloat](https://pkg.go.dev/strconv#ParseFloat)

[GEEKS4GEEKS]: https://www.geeksforgeeks.org/how-to-convert-string-to-float-type-in-golang/
[GITHUB]: https://github.com/jonasbn/allowed-downtime-calculator
