# Compare Two Branches and Get a List of Files

Comparing two branches (or even commits) might give your a lot of output, but you can tell Git to just give you a list of the files.

- `--name-only` gives your only filenames
- `--name-status` gives you filenames and status

Compare current branch with master and get filenames and statusses:

```shell
git diff --name-status master
A       git/compare_two_brances_and_get_a_list_of_files.md
```

Or comparing current branch with master and get only filenames:

```shell
git diff --name-only master
git/compare_two_brances_and_get_a_list_of_files.md
```

Compare two branches and get filenames and statusses:

```shell
git diff --name-status difftest master
A       git/compare_two_brances_and_get_a_list_of_files.md
```

Compare two branches and get only filenames:

```shell
git diff --name-only difftest master
git/compare_two_brances_and_get_a_list_of_files.md
```

## Resources and References

- [StackOverflow: "How can I see the differences between two branches?"](https://stackoverflow.com/questions/9834689/how-can-i-see-the-differences-between-two-branches)
- [StackOverflow: "Showing which files have changed between two revisions"](https://stackoverflow.com/questions/822811/showing-which-files-have-changed-between-two-revisions)
