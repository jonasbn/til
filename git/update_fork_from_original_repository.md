# Post Fork Merging Changes from Your Original Repository

Sometimes you end up on a situation where you forked from a repository, something interesting happened and you want to get the additional changes.

```bash
# cd into your repository
$ cd myfork

# add an additional remote 
$ git remote add parent <parent-url>

# pull from the parent
$ git pull parent <branch>

# add the changes to your fork
$ git push
```

Source: [Stackoverflow](http://stackoverflow.com/questions/4169832/update-my-github-repo-which-is-forked-out-from-another-project)
