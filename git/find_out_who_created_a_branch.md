# Find Out Who Created a Branch

Sometimes it is usefull to find out who created a given branch.

Well first pull _everything_.

The output the branches and creators:

```bash
$ git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)'
Thu Dec 5 20:20:54 2019 +0100    jonasbn         refs/heads/master
Thu Dec 5 20:20:54 2019 +0100    jonasbn         refs/remotes/origin/HEAD
Thu Dec 5 20:20:54 2019 +0100    jonasbn         refs/remotes/origin/master
```

The StackOverflow response (below), which led me to this even uses sorting:

```bash
$ git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' --sort=committerdate
Thu Dec 5 20:20:54 2019 +0100    jonasbn         refs/heads/master
Thu Dec 5 20:20:54 2019 +0100    jonasbn         refs/remotes/origin/HEAD
Thu Dec 5 20:20:54 2019 +0100    jonasbn         refs/remotes/origin/master
```

Not so interesting in this example, but you get the picture.

To get back to the original question, how do I see the author of a specific branch. Use the above in combination with a `grep`-like tool.

```bash
$ git for-each-ref --format='%(committerdate) %09 %(authorname) %09 %(refname)' | ag master
Thu Dec 5 20:20:54 2019 +0100    jonasbn         refs/heads/master
Thu Dec 5 20:20:54 2019 +0100    jonasbn         refs/remotes/origin/master
```

## References

- [StackOverflow](https://stackoverflow.com/questions/12055198/find-out-a-git-branch-creator/38103063)
