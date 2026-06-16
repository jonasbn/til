# Learn nim

These are my notes from doing the Exercism track for Nim programming.

## Compile

To compile a **Nim** program, use the `nim` command.

```bash
nim c -r file_name.nim
```

The you get an executable file that you can run, like so:

```bash
./file_name
```

### Hello World Example

```nim
# File: helloworld.nim
echo "hello, world!\n"
```

```bash
nim c -r helloworld.nim
```

```bash
./helloworld
hello, world!
```

## Run tests

To run unit-tests implemented for **Nim**

This can be used to run the tests for the exercises in the **Exercism** track for `nim`.

```bash
nim r test_exercise_name.nim
```

## Resources and References

- [Exercism: Nim](https://exercism.io/tracks/nim)
- [Install Nim on *nix](https://nim-lang.org/install_unix.html)
- [Nim Programming Language](https://nim-lang.org/)
- [Nim by Example](https://nim-by-example.github.io/)
- [Nim Manual](https://nim-lang.org/docs/manual.html)
- [Nim Playground](https://play.nim-lang.org/)
- [Nimble](https://nim-lang.org/docs/nimble.html)
- [Num documentation](https://nim-docs.readthedocs.io/en/latest/)
