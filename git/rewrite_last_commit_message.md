# Rewrite the last commit message

I often fat-finger or misspell stuff in commit messages, luckily **Git** lets you correct these things without too much hazzle.

If you have just made the commit locally and have not yet pushed

```bash
$ git commit --amend
```

If you have pushed to your remote

```bash
$ git commit --amend
git push --force
```

Source [Github Help](https://help.github.com/articles/changing-a-commit-message/)

