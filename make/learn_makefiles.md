# Learn Makefiles

`make` and Makefiles are powerful tools, but sometimes a bit special to work with if you are not exposed to them regularly.

## `make` reports something is not up to date

I am using `make` for my TIL collection to consolidate some of the things I often do, so I have _targets_ for:

- Monitoring some stats for the collection
- Running a spell checker
- Running a Markdown linter

The file currently look as follows:

```Makefile
.PHONY: stats markdown spelling
stats:
    ls **/*.md | entr ./check_til.pl

markdown:
    markdownlint .

spelling:
    spellchecker.sh
```

Do note this file is changes since my Markdown is not so welcoming to tab and Makefiles uses tabs.

Anyway I observed the error:

```shell
make markdown
make: `markdown' is up to date.
```

I had to list the "markdown" target to `.PHONY`

This is the explanation:

> Maybe you have a file/directory named test in the directory. If this directory exists, and has no dependencies that are more recent, then this target is not rebuild.
> To force rebuild on these kind of not-file-related targets, you should make them phony as follows:

REF: [StackOverflow: "Why does make think the target is up to date?"][StackOverflow].

## Resources and References

- [Makefile Tutorial](https://makefiletutorial.com/)

[StackOverflow]: https://stackoverflow.com/questions/3931741/why-does-make-think-the-target-is-up-to-date
