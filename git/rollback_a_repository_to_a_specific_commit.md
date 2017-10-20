# Rollback a repository to a specific commit

You screw up and want to go back to a known state.

Using `--hard` this rollback your files locally

```bash
# Reset to either a tag, branch or commit 
$ git reset --hard <tag/branch/commit id>

# Point to branch and enforce your reset, resolve your reponame using git remote
$ git push <reponame> -f
```

[Source: StackOverflow](https://stackoverflow.com/questions/1616957/how-do-you-roll-back-reset-a-git-repository-to-a-particular-commit)
