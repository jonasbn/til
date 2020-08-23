# Notes on Rust

## Additional Notes

My notes on **Rust** are based on the following version:

```bash
$ rustc --version
rustc 1.29.0 (aa3ca1994 2018-09-11)
```

### main is a special function

Like in **C** the function main is the entrypoint for the compiled executable.

### Variables are immutable

This will result in a compilation error:

```rust
fn main() {
    let x = 2;
    x += 2;
    println!("x equals {}", x);
}
```

Adding keyword `mut` to make our variable `x` mutable

```rust
fn main() {
    let mut x = 2;
    x += 2;
    println!("x equals {}", x);
}
```

### Types and Annotating types

**Rust** will try to figure out types by itself. You can however annotate type decalations

The following primitive simple types are available in **Rust**:

- Boolean (`bool`), true or false
- Integer (signed or unsigned), architecture dependent, defaults to `ì32`

| signed | unsigned |
| :------------: | :------------: |
| `i8` | `u8` |
|  `i16` | `u16` |
| `i32` | `u32` |
| `i64` | `u64`|

- Floating point (`f32` or `f64`), defaults to `f64`

- Character, single character [unicode](https://en.wikipedia.org/wiki/Unicode) [scalar](https://en.wikipedia.org/wiki/Variable_(computer_science)) value, expressed using single-quotes.

And the following compound primitive data types:

- Tuple, see also: [Wikipedia: tuple](https://en.wikipedia.org/wiki/Tuple), tuples in **Rust** does not have to be of the same type.
- Array, arrays in **Rust** must be of the same type. Values in arrays can be changed if declared mutable, but not the size of array (number of elements), use the vector type (`vec`) instead
- Slice, a reference to a subset of data from another data structure

```rust
fn main() {
    let mut x: i32 = 2;
    x += 2;
    println!("x equals {}", x);
}
```

### Debugging Macro

This macro was introduced with Rust 1.32.0

You regularly write code like:

```rust
let x = 5;

println!("{:?}", x);

// or maybe even this
println!("{:#?}", x);
```

You can use the newly introduced macro like so:

```rust
fn main() {
    let x = 5;

    dbg!(x);
}
```

Please see [the blog post](https://blog.rust-lang.org/2019/01/17/Rust-1.32.0.html#the-dbg-macro)
