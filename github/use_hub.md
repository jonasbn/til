# Use hub

`hub` is a _replacement_ for _git_, well it is actually just a command line wrapper, which makes your work with **GitHub** easier.

> hub can be safely aliased as git, so you can type $ git <command> in the shell and have it expanded with hub features.

Prior to aliasing:

```bash
$ hub --version
git version 2.25.0
hub version 2.14.1
```

```bash
$ git --version
git version 2.25.0
```

Aliasing:

```bash
$ alias git="hub"
$ alias | grep hub
alias git='hub'
```

After aliasing:

```bash
$ hub --version
git version 2.25.0
hub version 2.14.1
```

The alias should be put in your `.bash_profile` or equivalent.

## References

- [Hub website](https://hub.github.com/)
- [Hub GitHub Repository](https://github.com/github/hub)
