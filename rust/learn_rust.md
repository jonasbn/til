# Learning Rust

Install **rust**, via `rustup`, see: https://rustup.rs/

Initiate a **rust** application

```bash
$ cargo new -bin «application»
```

Example:

```bash
$ cargo new —bin helloworld
```

The variation if you are creating a library

```bash
$ cargo new —lib helloworldlibrary
```

This generates the following files:

- `Cargo.toml`, meta data for our application/library
- `Cargo.lock`, meta data on dependencies for our application/library
- `src/`, our source directory

Now we are ready to compile

```bash
$ cargo build
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

## Resources

- [rustup.rs - The Rust toolchain installer](https://rustup.rs/)
- [The Rust Programming Language](https://www.rust-lang.org/en-US/)
- [Wikipedia](https://en.wikipedia.org/wiki/Rust_(programming_language))
- [Rust Playground](https://play.rust-lang.org/)
- [Cargo: packages for Rust](https://crates.io/)
