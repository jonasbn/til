# Setting Up a Rust Development Environment

I have just started to evaluate and learn **Rust**. I have some _problems_, where **Rust** might be a good fit for a solution, but in order to get there I have to get a development environment for **Rust** set up.

This guide was written for **macOS** and aimed at using **Visual Studio Code**.

Start by installing the fundamental **Rust** toolchain via: [https://rustup.rs/](https://rustup.rs/).

 :warning: Since you should never be executing anything directly in a shell from a unverified URL, do yourself a favor of inspecting the source behind the URL.

```bash
$ curl -vs https://sh.rustup.rs 2>&1 | less
```

Now that we have that out of the way lets install **Rust**.

```bash
$ curl https://sh.rustup.rs -sSf | sh
```

Please check [https://rustup.rs/](https://rustup.rs/) for alternative ways of installing.

The URL actually installs a tool named `rustup`, which is the recommended way of handling your **Rust** installation, `rustup` installs (among other things):

- `rustc`, the **Rust** compiler
- `cargo`, **Rust** package manager

Now that we have **Rust** installed, we can start working on our first application.

Initiate a **Rust** application with `cargo`. `cargo` is **Rust's** package manager, you use it for _everything_.

```bash
$ cargo new -bin «application»
```

Example:

```bash
$ cargo new —bin helloworld
     Created library `helloworld` project
```

The variation if you are creating a library:

```bash
$ cargo new —lib helloworldlibrary
     Created library `helloworldlibrary` project
```

This generates the following files:

- `Cargo.toml`, meta data for our application/library
- `Cargo.lock`, meta data on dependencies for our application/library
- `src/`, our source directory

And we are ready to compile, which can be done using `cargo`

```bash
$ cargo build
    Finished dev [unoptimized + debuginfo] target(s) in 0.10s
```

This generates the are directory named `target/`, with the following contents:

```bash
$ tree target/
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

This build is not optimized as indicated by the compiler and is aimed at development and debugging.

The _target_ can be run as:

```bash
$ ./target/debug/helloworld
Hello, world!
```

If you want to build for release, you add the additional flag: `--release`

```bash
$ cargo build —release
    Finished release [optimized] target(s) in 0.10s
```

This adds more files to `target/` directory:

```bash
$ tree target/
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

The above tree shows both of our _targets_, you can do a clean up of the `target/` directory with the `cargo` command.

```bash
$ cargo clean
```

You can run the target executable, either like:

```bash
$ ./target/release/helloworld
Hello, world!
```

Or you can use `cargo` to run the executable, I could have mentioned this earlier since the same goes for the regular build, but I wanted to take things step by step.

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

`cargo run` builds automatically prior to executing if changes has been saved to the `src/` files.

If you use **Visual Studio Code** and the [RLS extension](https://marketplace.visualstudio.com/items?itemName=rust-lang.rust) for **Rust**. Your `target/` directory is populated with even more data, see the `rls/` directory. Do note that this is the `target/` directory after a `cargo clean` and initialization from **Visual Studio Code**. And the set up is for the integration with **Visual Studio Code** via **RLS** (Rust Language Server).
```bash
$ tree target
target
└── rls
    └── debug
        ├── build
        ├── deps
        │   ├── helloworld-da127327fd97b6ec.d
        │   ├── helloworld-fe97a0dcc4f47622.d
        │   ├── libhelloworld-da127327fd97b6ec.rmeta
        │   └── libhelloworld-fe97a0dcc4f47622.rmeta
        ├── examples
        ├── incremental
        │   ├── helloworld-3cgahs8hwxsms
        │   │   ├── s-f5woledziu-7esk1o-3jq9t7fc4fb3p
        │   │   │   ├── dep-graph.bin
        │   │   │   ├── query-cache.bin
        │   │   │   └── work-products.bin
        │   │   └── s-f5woledziu-7esk1o.lock
        │   └── helloworld-uq5esv9yxxqk
        │       ├── s-f5wolec88s-fleft9-1dg0efqmqtyu2
        │       │   ├── dep-graph.bin
        │       │   ├── query-cache.bin
        │       │   └── work-products.bin
        │       └── s-f5wolec88s-fleft9.lock
        ├── libhelloworld-da127327fd97b6ec.d
        ├── libhelloworld-da127327fd97b6ec.rmeta
        ├── libhelloworld.d
        ├── libhelloworld.rmeta
        └── native
```

**RLS** is designed to support other _front-ends_ (editors), so **RLS** is not specific to **Visual Studio Code**. If you would like to know more see the [RLS repository](https://github.com/rust-lang-nursery/rls).

Now you are ready to try to play around with **Rust** or throw some **Rust** at your current problem.

I now it is quite overwhelming to consume all of the guides, tutorials, articles and blogposts on **Rust**, just check the [Rust learning resources](https://github.com/ctjhoa/rust-learning).

Do checkout the [documentation section](https://www.rust-lang.org/en-US/documentation.html) of the [main Rust site](https://www.rust-lang.org/en-US/).

:bulb: And finally one last tip from me - when you find out what libraries you want to try out on [crates.io](https://crates.io/), they often have a documentation link, which can lead you to examples etc.

This guide and some [video tutorials] was all that started my first "[Hacktoberfest Fairytale](https://dev.to/jonasbn/blog-post-a-little-hacktoberfest-fairytale-3k96)", so what are you waiting for.

[This TIL]() was lifted from my [TIL collection](http://jonasbn.github.io/til/).

## Resources

- [rustup.rs - The Rust toolchain installer](https://rustup.rs/)
- [The Rust Programming Language](https://www.rust-lang.org/en-US/)
- [Wikipedia](https://en.wikipedia.org/wiki/Rust_(programming_language))
- [Rust Playground](https://play.rust-lang.org/)
- [crates.io: packages of software libraries for Rust](https://crates.io/)
- [RLS](https://github.com/rust-lang-nursery/rls)
