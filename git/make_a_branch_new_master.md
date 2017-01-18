# Make a branch new master

When cleaning up old repositories, perhaps migrated from **SVN** or the like - everything is _screwed up_ - do not dispair, **git** can fix this.

```bash
git checkout better_branch
git merge --strategy=ours master    # keep the content of this branch, but record a merge
git checkout master
git merge better_branch             # fast-forward master up to the merge
```

Source [StackOverflow](http://stackoverflow.com/questions/2763006/change-the-current-branch-to-master-in-git)