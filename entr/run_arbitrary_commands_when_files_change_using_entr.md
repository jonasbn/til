# Run arbitrary commands when files change using entr

`entr` is really cool, I have used `entr` for automatically building and testing Go programs, when coding these.

```bash
ls *.go | entr -c sh -c 'go build && go test'
```

Another example for `perlcritic`

```bash
ls t/*.rc |entr -c sh -c 'perlcritic --profile t/perlcritic.rc lib'
```

## Resources and References

- [entr manpage](https://manpages.ubuntu.com/manpages/xenial/man1/entr.1.html)
- [superuser: "How to execute a command whenever a file changes?"](https://superuser.com/questions/181517/how-to-execute-a-command-whenever-a-file-changes)
