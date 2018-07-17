# Maintain Multiple Git Identities

If you like me use git for both work and _play_. It is nice to be able to separate **Git** identities.

Normally you would have something along the lines of:

```
# ~/.gitconfig

[user]
    name = Firstname Lastname
    email = <private email address>
```

With release 2.13 of **Git** you can do _conditional includes_, which enables you to do:

```
[includeIf "gitdir:~/develop/git-work/"]
    path = .gitconfig-work
```

So insert the above snippet into: `~/.gitconfig` and create the file: `~/.gitconfig-work`, _just name stuff to match your preferences_.

```
# ~/.gitconfig-work

[user]
    name = Firstname Lastname
    email = <work email address>
```

Do note the order of things, so `[user]` should be before the overwrite specified by the conditional.

```
# ~/.gitconfig

[user]
    name = Firstname Lastname
    email = <private email address>
[includeIf "gitdir:~/develop/git-work/"]
    path = .gitconfig-work
```

After this you should be able to observe:

```
$ cd ~/dev/justcurious
$ git config user.email
<private email address>

$ cd ~/develop/git-work/projectA
$ git config user.email
<work email address>
```

You can then specify all the _conditional includes_ you want. My _conditional includes_ configuration `~/.gitconfig` _looks like_:

```
[includeIf "gitdir:~/develop/git-work/"]
    path = .gitconfig-work
[includeIf "gitdir:~/develop/gitlab-work/"]
    path = .gitconfig-work
[includeIf "gitdir:~/develop/github-work/"]
    path = .gitconfig-work
```

You should of course set the default to your primary/dominant repositories and then overwrite for the special repositories.

Source: [Blog post](https://dev.to/maxlmator/maintaining-different-git-identities) by Max Kleucker, @mkleucker
Source: [Git documentation on conditional includes](https://git-scm.com/docs/git-config#_conditional_includes)
