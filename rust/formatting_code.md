# Formatting Code

Rust has a very nifty code formatter for _prettyprinting_ you code.

You can use it via `cargo`

```bash
$ cargo fmt
```

It is available via `rustfmt`  (earlier `cargo-fmt`)

More details on invocation:

```bash
$ cargo fmt --help
cargo-fmt 1.4.11
This utility formats all bin and lib files of the current crate using rustfmt.

USAGE:
    cargo fmt [FLAGS] [OPTIONS] [-- <rustfmt-options>...]

FLAGS:
        --all        Format all packages (only usable in workspaces)
    -h, --help       Prints help information
    -q, --quiet      No output printed to stdout
    -v, --verbose    Use verbose output
        --version    Print rustfmt version and exit

OPTIONS:
        --manifest-path <manifest-path>      Specify path to Cargo.toml
        --message-format <message-format>    Specify message-format: short|json|human
    -p, --package <package>...               Specify package to format (only usable in workspaces)

ARGS:
    <rustfmt-options>...    Options passed to rustfmt
```

## References

- [GitHub: ](https://github.com/rust-lang/rustfmt)
- [Wikipedia: Prettyprint](https://en.wikipedia.org/wiki/Prettyprint)
