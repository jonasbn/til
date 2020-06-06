# One-time Disable of diff-so-fancy for Git

The pager `diff_so_fancy` is very nice and renders beautiful diffs to your terminal.

The below tip works if you have `diff-so-fancy` configured as your pager in  your **Git** config.

Sometimes you have to communicate the diff via some other medium, where the coloring and layout is lost when the diff is converted to basic text. So just _pasting_ `diff-so-fancy` output is not always so fancy and important information is lost in the process.

You can disable the use of the pager for **Git** quite easily and return to regular diff formatting on the command line by using the `git` command line option: `--no-pager`

```bash
$ git --no-pager diff
```

Since it is one-time, `diff-so-fancy` works as expected when just doing:

```bash
$ git  diff
```

Do note that the --no-pager is an option to the `git` command and not `git diff`, so the order is important.

## References

- [Git documentation: option: --no-pager](https://git-scm.com/docs/git)
- [Git diff documentation](https://git-scm.com/docs/git-diff)
- [GitHub: diff-so-fancy: issue 181](https://github.com/so-fancy/diff-so-fancy/issues/181)
- [GitHub: diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)
