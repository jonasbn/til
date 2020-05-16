# Post Fork Merging Changes from Your Original Repository

Sometimes you end up on a situation where you forked from a repository, something interesting happened and you want to get the additional changes.

```bash
# cd into your repository
$ cd myfork

# check of you have URL for the original repository
$ git remote -v

# this will list your remotes, this might look like
origin  «remote url»

# if you do not have a URL for the original repository,
# often referred to as upstream
$ git remote add upstream «url of the original repository»

# pull from the upstream repository
$ git pull upstream «branch»

# add the changes to your fork
$ git push
```

When all of the above it set up, do notice this is not the default, so you have to add the upstream to you repository it is actually a good idea to sync your fork's master with the upstream master regularly, or when you start to do work.

```bash
# pull from the upstream repository
$ cd myfork
$ git checkout master
$ git pull upstream master
```

Then you can always decide if you active branches need updating from you own master branch.

The more up to date you are and the smaller that gap of changes are minimizing the risk of merge conflict - just as for you own active branches for your own repositories.

## References

- [Stackoverflow](http://stackoverflow.com/questions/4169832/update-my-github-repo-which-is-forked-out-from-another-project)
