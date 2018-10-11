# Squash Merge

Often when working on a branch you have several commits before you end with the solution you want. All this back and forth, experiments, house-keeping etc. is important, but it can make your clutter up commit history.

In order to get a clean history, squashing merges, result in a more readable commit log.

```bash
$ git checkout master
$ git merge --squash bugfix_branch
$ git commit
```

>Omitting the -m parameter lets you modify a draft commit message containing every message from your squashed commits before finalizing your commit.

## References

- [Stack Overflow](https://stackoverflow.com/questions/5308816/how-to-use-git-merge-squash)
