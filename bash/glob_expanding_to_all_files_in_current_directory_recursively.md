# Glob expanding to all files in current directory recursively

Oftentimes you want to process all files in a deep filestructure recursively.

In `bash` this can be accomplished with the following _glob_: `{,**/}*.ext`

To see it in action, try with `ls`

```bash
$ ls -1 {,**/}*.*
example/ignoreme.txt
test.t
```

I picked this up from [a marvellous response on StackOverflow][StackOverflow].

If you like me attempt to do secure shell scripting, do note that this does not work with: `set -f`

> Disable filename expansion (globbing) upon seeing *, ?, etc.

This took me some time to figure out.

I use the globbing trick when processing a deep structure of XML files using `xmllint`:

```bash
$ xmllint --noout --schema my.xsd xml/{,**/}*.xml
```

Another explanation [is available here from unix.stackexchange.com](https://unix.stackexchange.com/questions/49913/recursive-glob).

## Resources and References

1. [StackOverflow: "What expands to all files in current directory recursively?"][StackOverflow]
1. [TIL: "Write Safe Shell Scripts](write_safe_shell_scripts.md)

[StackOverflow]: https://stackoverflow.com/questions/1690809/what-expands-to-all-files-in-current-directory-recursively
