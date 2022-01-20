# Structs

A struct can be used to implement a structured data type.

When you have defined your struct, for example like this person structure:

```go
type person struct {
    name string
    age  int
}
```

You can initialize it easily like so:

```go
fmt.Println(person{"Bob", 20})
```

If you however change your struct or reorder the fields, for example to be alphabetical:

```go
type person struct {
    age  int
    name string
}
```

The short-form for initialization will render unexpected results.

So it is recommended to use long-form:

```go
fmt.Println(person{name: "Alice", age: 30})
```

This does not get influence by reordering the fields or the addition of new fields, the latter since non-specified fields will simply be set to the defaults:

- `0` for numbers, meaning `0` for integers and `0.000000` for floats
- empty string (`""`) for strings
- `false` for booleans

```go
type person struct {
    age  int
    name string
    height float32
}
```

Here follows a more complete example:

```go
package main

import "fmt"

type person struct {
    age    int
    name   string
    height float32
    parent bool
}

func main() {
    p := person{}

    fmt.Printf("height of >%s<: >%f< aged >%d< and parent: >%t<\n", p.name, p.height, p.age, p.parent)
}
```

```zsh
zsh> go build -o default default.go
zsh> ./default
height of ><: >0.000000< aged >0< and parent: >false<
```

## Resources and References

1. [Go By Example: structs](https://gobyexample.com/structs)
2. [Yourbasic Go: fmt.Printf formatting tutorial and cheat sheet](https://yourbasic.org/golang/fmt-printf-reference-cheat-sheet/)
