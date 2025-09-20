# Git Worktrees

I heard about these magic worktrees in some conversation on a podcast. Now I finally got around to using them.

They are indeed _magical_, or let's just say, incredibly useful. I have added a resource, which I believe is a good explanation, but a tad too long, since git worktrees are very basic, but very useful.

The gist:

You are working in something in a branch in your git workdirectory.

An urgent distraction enters, so you do:

```shell
git worktree add  ../attention distraction
```

This creates a directory outside your current working directory named: `attention` with a branch named `distraction` defaulting to head

You can jump to the newly created directory:

```shell
cd ../attention
```

The worktree is per repository and you can see your existing worktrees doing:

```shell
git worktree list
```

And when done being distracted:

```shell
git worktree remove ../attention
```

There are many more powerful options and the above just covers the basic, so do check the official documentation.

## Resources and References

- [Medium: "Mastering Git Worktree: A Developer’s Guide to Multiple Working Directories"](https://mskadu.medium.com/mastering-git-worktree-a-developers-guide-to-multiple-working-directories-c30f834f79a5)
- [Git Documentation: git-worktree](https://git-scm.com/docs/git-worktree)