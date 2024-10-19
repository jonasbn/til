# Use fd

`fd` is a fast alternative to `find`. Having used find for some time, it takes a little getting used to.

Here are some of the useful components:

```text
{}: A placeholder token that will be replaced with the path of the search result (documents/images/party.jpg).
{.}: Like {}, but without the file extension (documents/images/party).
{/}: A placeholder that will be replaced by the basename of the search result (party.jpg).
{//}: The parent of the discovered path (documents/images).
{/.}: The basename, with the extension removed (party).
```

One of the many uses I have for `find` is executing commands for a lot of directories, very often GitHub repositories.

```shell
fd '\.git$' --prune -u -t d -x zsh -c 'echo {//} && cd {//} && git status'
```

Executing a command on all files:

```shell
fd swagger-v2.json -x zsh -c "openapi-spec-validator {}"
```

Finding a large JSON file

```shell
fd -e json -x zsh -c 'stat -f "%z %N" {}' |awk '$1 > 10000000 {print $2}'
```

## Resources and References

- [GitHub Repository](https://github.com/sharkdp/fd)
- [StackOverflow: "How to quickly find all git repos under a directory"](https://stackoverflow.com/questions/11981716/how-to-quickly-find-all-git-repos-under-a-directory)
