# Maintain Multiple Git Identities

If you like me use git for both work and _play_. It is nice to be able to separate **Git** identities.

Normally you would have something along the lines of:

```
# ~/.gitconfig

[user]
    name = <first name> <last name>
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
    name = <first name> <last name>
    email = <work email address>
```

Do note the order of things, so `[user]` should be before the overwrite specified by the conditional.

```
# ~/.gitconfig

[user]
    name = <first name> <last name>
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

**NB!** the last back-slash (`/`) is important, leaving it out can cause issues, meaning the proper configuration is not active. Alternatively you can add asterisks (`*`).

```
[includeIf "gitdir:~/develop/git-work/**"]
    path = .gitconfig-work
[includeIf "gitdir:~/develop/gitlab-work/**"]
    path = .gitconfig-work
[includeIf "gitdir:~/develop/github-work/**"]
    path = .gitconfig-work
```

This information was retrieved from the blog post: "[Juggling Multiple Git Identities](http://blog.bennycornelissen.nl.s3-website-eu-west-1.amazonaws.com/post/juggling-multiple-git-identities/)" by Benny Cornelissen.

Inspecting if things work can be done using the `git` command.

Check a single value:

```bash
$ git config user.username
jonasbn
```

And for all values (_some left out for brevity and due to sensitivity_):

```bash
$ git config --list
user.name=jonasbn
alias.lsch=!f() { git diff --name-status -r HEAD~$1; }; f
alias.a=add
alias.b=branch
alias.c=commit --message
alias.ca=commit --all --message
alias.cl=clone
...
```

I want to check where a given values originates from I can get that using: `--show-origin`

```bash
$ git config --show-origin user.name
file:/home/jonasbn/.gitconfig-work   jonasbn
```

And of course you can do it for all parameters at once (_some left out for brevity and due to sensitivity_):

```bash
.git config --list --show-origin
file:/home/jonasbn/.gitconfig-work   jonasbn
file:.git/config        core.repositoryformatversion=0
```

## References

- [Blog post: "Maintaining Different Git Identities"](https://dev.to/maxlmator/maintaining-different-git-identities) by Max Kleucker, @mkleucker
- [Git documentation on conditional includes](https://git-scm.com/docs/git-config#_conditional_includes)
- [My dotfiles repository](https://github.com/jonasbn/dotfiles)
- [Blog post: "Juggling Multiple Git Identities"](http://blog.bennycornelissen.nl.s3-website-eu-west-1.amazonaws.com/post/juggling-multiple-git-identities/) by Benny Cornelissen
- [Git documentation: "First-Time Git Setup"](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)
