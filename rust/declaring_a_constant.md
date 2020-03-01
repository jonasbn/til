# Declaring a Constant

> Rust has two different types of constants which can be declared in any scope including global.
> Both require explicit type annotation:
>
> - `const`: An unchangeable value (the common case).
> - `static`: A possibly mutable variable with `'static` lifetime. The static lifetime is inferred and does not have to be specified. Accessing or modifying a mutable static variable is `unsafe`.

```rust
// Globals are declared outside all other scopes.
static LANGUAGE: &str = "Rust";
const THRESHOLD: i32 = 10;
```

## References

- [Rust by Example](https://doc.rust-lang.org/rust-by-example/custom_types/constants.html)
- [Rust Book: Variables and Mutability](https://doc.rust-lang.org/book/ch03-01-variables-and-mutability.html)
