# Run arbitrary commands when files change using entr

`entr` is a really useful tool, I have used `entr` for automatically building and testing Go programs, when coding these and many other things.

First example is for Go, where I use `entr` to run the test suite whenever I save changes to the source code.

Every time a file named `*.go` changes, `entr` will run the command you specify. In this example I guild and run the test suite.

```bash
ls *.go | entr -c sh -c 'go build && go test'
```

```bash
ls *.go
```

Identify the files, you point to a single file (see examples below) or even use `find`.

```bash
-c sh
```

Starts a new shell, which is needed to run multiple commands.

```bash
'go build && go test'
```

Builds and runs the test suite.

Do note:

- quotes are important, since the command is passed to `sh` as a single argument and we do not want to have `&&` interpreted by the shell and interfering with the `entr` command.
- the `-c` flag is used to clear the screen before running the command.

Another example is for `perlcritic`, the dominant linter for Perl.

When you alter your Perl::Critic configuration outlined in the `perlcriticrc` file, you can run check your source code against the new configuration. This is a good practice when adopting a new Perl::Critic configuration or when starting to use Perl::Critic on a project, which has not been _criticized_ before.

```bash
ls t/perlcritic.rc |entr -c sh -c 'perlcritic --profile /_ lib'
```

Here we just point to a single file.

```bash
ls t/perlcritic.rc
```

And we use nifty feature, we use the `--profile` flag to point to the file we want to use for `perlcritic` and `entr` lets us point to the file via the `/_` construct.

```bash
ls t/perlcritic.rc
```

And for building a basic Perl project, it sort of resembles the Go example above.

```bash
ls *.pm| entr -c sh -c './Build && ./Build test'
```

Another example could be Markdownlint

```bash
find . -name "*.md" |entr markdownlint /_
```

I really like `jq` and the combination with `entry` is a good one, since `jq` the command line JSON processor, it not easy to use and often you need to do alot of iterations, well I have to anyway.

You can put your `jq` command in a file and run it with `entr` like this:

```bash
ls -l myjqfile.jq | entr -c sh -c 'cat myfile.json | jq -r -f myjqfile.jq'
```

## Resources and References

- [entr manpage](https://manpages.ubuntu.com/manpages/xenial/man1/entr.1.html)
- [superuser: "How to execute a command whenever a file changes?"](https://superuser.com/questions/181517/how-to-execute-a-command-whenever-a-file-changes)
- [TIL: use jq](../jq/use_jq.md)
