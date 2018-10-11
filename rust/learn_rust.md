# Learning Rust

My notes on **Rust** are based on the following version:

```bash
> rustc --version
rustc 1.29.0 (aa3ca1994 2018-09-11)
```

Install **Rust**, via `rustup`, see: https://rustup.rs/

Initiate a **Rust** application

`cargo` is **Rust's** package manager, you use it for _everything_.

```bash
$ cargo new -bin «application»
```

Example:

```bash
$ cargo new —bin helloworld
     Created library `helloworld` project
```

The variation if you are creating a library

```bash
$ cargo new —lib helloworldlibrary
     Created library `helloworldlibrary` project
```

This generates the following files:

- `Cargo.toml`, meta data for our application/library
- `Cargo.lock`, meta data on dependencies for our application/library
- `src/`, our source directory

Now we are ready to compile

```bash
$ cargo build
    Finished dev [unoptimized + debuginfo] target(s) in 0.10s
```

This generates the are directory named `target/`, with the following contents:

```
> tree target/
target/
└── debug
    ├── build
    ├── deps
    │   ├── helloworld-e1702fb45f5d0052
    │   ├── helloworld-e1702fb45f5d0052.d
    │   └── helloworld-e1702fb45f5d0052.dSYM
    │       └── Contents
    │           ├── Info.plist
    │           └── Resources
    │               └── DWARF
    │                   └── helloworld-e1702fb45f5d0052
    ├── examples
    ├── helloworld
    ├── helloworld.d
    ├── helloworld.dSYM -> deps/helloworld-e1702fb45f5d0052.dSYM
    ├── incremental
    │   └── helloworld-15v45zkxrmyrm
    │       ├── s-f52pub8bwa-1t86tbf-23d93ip4735d7
    │       │   ├── 1y16o1qfye96o7m0.o
    │       │   ├── 37u9wm6hxf6h6j0m.o
    │       │   ├── 3rngp6bm2u2q5z0y.o
    │       │   ├── 4oc10dk278mpk1vy.o
    │       │   ├── 4xq48u46a1pwiqn7.o
    │       │   ├── dep-graph.bin
    │       │   ├── oa3rad818d8sgn4.o
    │       │   ├── query-cache.bin
    │       │   └── work-products.bin
    │       └── s-f52pub8bwa-1t86tbf.lock
    └── native
```

This build is not optimized as indicated by the compiler and is aimed at development and denbugging.

The target can be run as:

```bash
$ ./target/debug/helloworld
Hello, world!
```

If you want to build for release, you add an additional flag

```bash
$ cargo build —release
    Finished release [optimized] target(s) in 0.10s
```

This adds more files to `target/` directory:

```
target/
├── debug
│   ├── build
│   ├── deps
│   │   ├── helloworld-e1702fb45f5d0052
│   │   ├── helloworld-e1702fb45f5d0052.d
│   │   └── helloworld-e1702fb45f5d0052.dSYM
│   │       └── Contents
│   │           ├── Info.plist
│   │           └── Resources
│   │               └── DWARF
│   │                   └── helloworld-e1702fb45f5d0052
│   ├── examples
│   ├── helloworld
│   ├── helloworld.d
│   ├── helloworld.dSYM -> deps/helloworld-e1702fb45f5d0052.dSYM
│   ├── incremental
│   │   └── helloworld-15v45zkxrmyrm
│   │       ├── s-f52pub8bwa-1t86tbf-23d93ip4735d7
│   │       │   ├── 1y16o1qfye96o7m0.o
│   │       │   ├── 37u9wm6hxf6h6j0m.o
│   │       │   ├── 3rngp6bm2u2q5z0y.o
│   │       │   ├── 4oc10dk278mpk1vy.o
│   │       │   ├── 4xq48u46a1pwiqn7.o
│   │       │   ├── dep-graph.bin
│   │       │   ├── oa3rad818d8sgn4.o
│   │       │   ├── query-cache.bin
│   │       │   └── work-products.bin
│   │       └── s-f52pub8bwa-1t86tbf.lock
│   └── native
└── release
    ├── build
    ├── deps
    │   ├── helloworld-599221bdb1c77978
    │   └── helloworld-599221bdb1c77978.d
    ├── examples
    ├── helloworld
    ├── helloworld.d
    ├── incremental
    └── native
```

You can run the target executable, either like:

```bash
$ ./target/release/helloworld
Hello, world!
```

You can use `cargo` to run the executable too

```bash
$ cargo run
    Finished dev [unoptimized + debuginfo] target(s) in 0.03s
     Running `target/debug/helloworld`
Hello, world!
```

Do not that the default is the development version, which is run. If you want to run the release version instead do:

```bash
$ cargo run --release
    Finished release [optimized] target(s) in 0.03s
     Running `target/release/helloworld`
Hello, world!
```

`cargo run` builds automatically priori to executing if changes has been saved to the `src/` files.

If you use **Visual Studio Code** and the "rls" extension for **Rust**. Your `target/` directory is populated with even more data, see the `rls/` directory:

```
target/
├── debug
│   ├── build
│   ├── deps
│   │   ├── helloworld-e1702fb45f5d0052
│   │   ├── helloworld-e1702fb45f5d0052.d
│   │   └── helloworld-e1702fb45f5d0052.dSYM
│   │       └── Contents
│   │           ├── Info.plist
│   │           └── Resources
│   │               └── DWARF
│   │                   └── helloworld-e1702fb45f5d0052
│   ├── examples
│   ├── helloworld
│   ├── helloworld.d
│   ├── helloworld.dSYM -> deps/helloworld-e1702fb45f5d0052.dSYM
│   ├── incremental
│   │   └── helloworld-15v45zkxrmyrm
│   │       ├── s-f52pub8bwa-1t86tbf-23d93ip4735d7
│   │       │   ├── 1y16o1qfye96o7m0.o
│   │       │   ├── 37u9wm6hxf6h6j0m.o
│   │       │   ├── 3rngp6bm2u2q5z0y.o
│   │       │   ├── 4oc10dk278mpk1vy.o
│   │       │   ├── 4xq48u46a1pwiqn7.o
│   │       │   ├── dep-graph.bin
│   │       │   ├── oa3rad818d8sgn4.o
│   │       │   ├── query-cache.bin
│   │       │   └── work-products.bin
│   │       └── s-f52pub8bwa-1t86tbf.lock
│   └── native
├── release
│   ├── build
│   ├── deps
│   │   ├── helloworld-599221bdb1c77978
│   │   └── helloworld-599221bdb1c77978.d
│   ├── examples
│   ├── helloworld
│   ├── helloworld.d
│   ├── incremental
│   └── native
└── rls
    └── debug
        ├── build
        ├── deps
        │   ├── helloworld-289d5610102f414b.d
        │   ├── helloworld-aa45ab6106dddb3e.d
        │   ├── libhelloworld-289d5610102f414b.rmeta
        │   └── libhelloworld-aa45ab6106dddb3e.rmeta
        ├── examples
        ├── incremental
        │   ├── helloworld-1m9gh3gg1tyn
        │   │   ├── s-f52pv8pdvm-1frrb8d-8933j1pzv1sk
        │   │   │   ├── dep-graph.bin
        │   │   │   ├── query-cache.bin
        │   │   │   └── work-products.bin
        │   │   └── s-f52pv8pdvm-1frrb8d.lock
        │   └── helloworld-xv6lvokmg1q9
        │       ├── s-f52pv8mc43-qo1se0-2zfdiwbaz7xaf
        │       │   ├── dep-graph.bin
        │       │   ├── query-cache.bin
        │       │   └── work-products.bin
        │       └── s-f52pv8mc43-qo1se0.lock
        ├── libhelloworld-aa45ab6106dddb3e.d
        ├── libhelloworld-aa45ab6106dddb3e.rmeta
        ├── libhelloworld.d
        ├── libhelloworld.rmeta
        └── native
```

## Additional Notes

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

## Resources

- [rustup.rs - The Rust toolchain installer](https://rustup.rs/)
- [The Rust Programming Language](https://www.rust-lang.org/en-US/)
- [Wikipedia](https://en.wikipedia.org/wiki/Rust_(programming_language))
- [Rust Playground](https://play.rust-lang.org/)
- [Cargo: packages for Rust](https://crates.io/)
