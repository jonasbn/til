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
[includeIf "gitdir:~/Work/"]
    path = .gitconfig-work
```

After this you should be able to observe:

```
$ cd ~/dev/justcurious 
$ git config user.email
<private email address>

$ cd ~/Work/projectA
$ git config user.email
<work email address>
```

All examples lifted from Max's blog post.

Source: [Blog post](https://dev.to/maxlmator/maintaining-different-git-identities) by Max Kleucker, @mkleucker
Source: [Git documentation on conditional includes](https://git-scm.com/docs/git-config#_conditional_includes)
