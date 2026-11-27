# Difference between `git clone --bare` and `git clone --mirror`

Both skip the working tree and produce a bare repository, so `ls` on the result looks similar either way. The
actual difference is in which refs get copied and how the result is configured to track its source afterwards.

Per the official docs:

> `--bare`: Make a _bare_ Git repository [...]. The branch heads at the remote are copied directly to corresponding
> local branch heads, without mapping them to `refs/remotes/origin/`. When this option is used, neither
> remote-tracking branches nor the related configuration variables are created.

> `--mirror`: Set up a mirror of the source repository. This implies `--bare`. Compared to `--bare`, `--mirror` not
> only maps local branches of the source to local branches of the target, it maps _all_ refs (including
> remote-tracking branches, notes etc.) and sets up a refspec configuration such that all these refs are overwritten
> by a `git remote update` in the target repository.

So `--mirror` is `--bare` plus: every ref under the source's `refs/*` (not just `refs/heads/*` and `refs/tags/*`),
and a fetch refspec that keeps the mirror in sync on every `git remote update`.

## Verified locally

Cloning the same source repo both ways, where the source itself had a note and was a clone of something else (so it
had its own `refs/remotes/origin/*`):

```bash
$ git -C bare-repo for-each-ref
... commit refs/heads/main
... commit refs/tags/v1.0

$ git -C mirror-repo for-each-ref
... commit refs/heads/main
... commit refs/notes/commits
... commit refs/remotes/origin/HEAD
... commit refs/remotes/origin/feature
... commit refs/remotes/origin/main
... commit refs/tags/v1.0
```

The bare clone only pulled in `refs/heads/*` and `refs/tags/*` from the source, same as an ordinary clone would. The
mirror pulled in everything, including the source's own remote-tracking refs and its note.

The config confirms where that comes from — `--mirror` sets an explicit fetch refspec, `--bare` doesn't configure one
at all:

```bash
$ git -C bare-repo config --get-regexp 'remote\..*'
remote.origin.url /path/to/source

$ git -C mirror-repo config --get-regexp 'remote\..*'
remote.origin.url /path/to/source
remote.origin.tagopt --no-tags
remote.origin.fetch +refs/*:refs/*
remote.origin.mirror true
```

`+refs/*:refs/*` is why `git remote update` inside a mirror clone will overwrite every ref to match the source
exactly (including deleting refs the source no longer has) — a bare clone has no such refspec configured, so a plain
`git fetch` there won't automatically pick up new branches the same way.

## When to use which

- **`--bare`**: a server-side or storage endpoint you intend to push to normally (for example a self-hosted remote,
  or the target of `git push` deployments) — you don't need the source's remote-tracking branches or notes along for
  the ride.
- **`--mirror`**: a full backup or a migration of a repository to a new host, where you want everything — every
  branch, tag, note, and remote-tracking ref — and the ability to keep it in sync with `git remote update` as the
  source changes.

## Resources and References

- [git-clone(1) — --bare and --mirror](https://git-scm.com/docs/git-clone)
- [Stack Overflow: What's the difference between `git clone --mirror` and `git clone --bare`?](https://stackoverflow.com/questions/3959924/whats-the-difference-between-git-clone-mirror-and-git-clone-bare)
