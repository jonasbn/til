# Testing Using Bats

Bats is intended for testing shell scripts. It is simple to use and has a lot of features. In this post.

I have found out that Bats is a great tool for testing other types of executables as well, such as:

- Go CLI applications
- Perl scripts

I found this nice tutorial on how to get started with Bats:

- [Bats-core readthedocs.io: Tutorial][TUTORIAL]

This is the vary basic use I am currently working with for testing a Perl script.

My normal Perl unit-tests are located in the `t/` directory. In addition I have created a directory named `test/`  which contains the Bats test scripts.

In that directory I have a file named `test.bats`, with the following contents (the names have been simplified for readability):

```shell
@test "can run our script with --help option" {
    carton exec -- ./script/perl-script.pl --help
}

@test "can run our script without options" {
    carton exec -- ./script/perl-script.pl
}
```

## Resources and References

- [Bats-core readthedocs.io: Tutorial][TUTORIAL]
- [Article on Bats testing][ARTICLE]
- [GitHub Repository for Bats][REPO]

[TUTORIAL]: https://bats-core.readthedocs.io/en/stable/tutorial.html
[ARTICLE]: https://www.baeldung.com/linux/testing-bash-scripts-bats
[REPO]: https://github.com/bats-core
