# Colored

`colored` is a Rust crate for creating colored CLI applications.

`colored` can use the environment variables: `NO_COLOR` and `CLICOLOR` and it's companion `CLICOLOR_FORCE`.

But how would that work? - which setting wins.

- `CLICOLOR` enables coloring
- `CLICOLOR` enabled and enforces coloring
- `NO_COLOR` disables coloring

I made a quick experiment based on the example from the `colored` documentation.

```bash
$ mkdir colored
$ cargo init colored
$ cd $_
```

Edit the `Cargo.toml` file.

```toml
[dependencies]
colored = "2"
```

Install/update dependencies.

```bash
$ cargo update
```

Edit our example (`src/main.rs`)

```rust
use colored::*;

fn main() {
    println!("{} {} !", "Hello,".green(), " World!".red().bold());
}
```

Try it out:

```bash
$ cargo run
    Finished dev [unoptimized + debuginfo] target(s) in 0.01s
     Running `target/debug/colored`
Hello,  World! !
```

And you should see colorful output.

```bash
$ NO_COLOR=1 cargo run
    Finished dev [unoptimized + debuginfo] target(s) in 0.01s
     Running `target/debug/colored`
Hello,  World!
```

And you should not see colorful output.

```bash
❯ NO_COLOR=1 CLICOLOR_FORCE=1 cargo run
    Finished dev [unoptimized + debuginfo] target(s) in 0.01s
     Running `target/debug/colored`
Hello,  World! !
```

And hey, what do you know, `$CLICOLOR_FORCE` wins over `$NO_COLOR`.

## Resources and References

1. [crates.io: colored](https://crates.io/crates/colored)
1. [NO_COLOR specification](https://bixense.com/clicolors/)
1. [CLI_COLORS specification](https://bixense.com/clicolors/)
