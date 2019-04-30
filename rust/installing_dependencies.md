# Installing Dependencies

Installing external libraries, components in **Rust** projects are pretty easy, but not as intuitive as one might expect - _you have to do it manually_ like **Perl's** `carton`, but unlike eg. JavaScript's `npm`.

The build tool `cargo` does not handle this, but you have to specify the requirement manually in the projects `Cargo.toml`

This example is lifted from a small project I was working on when trying to learn about _futures_

```toml
[package]
name = "hello_futures"
version = "0.1.0"
authors = ["jonasbn <email@example.com>"]
edition = "2018"

[dependencies]
futures = ""
```

Under `[dependencies]` you simply specify the dependency. Do note that I am only _scraping_ the surface, do the References below for more details.

## References

- [The Getting Started Cargo guide](https://doc.rust-lang.org/cargo/guide/)
- [Cargo Guide: Specifying dependencies](https://doc.rust-lang.org/cargo/reference/specifying-dependencies.html)
