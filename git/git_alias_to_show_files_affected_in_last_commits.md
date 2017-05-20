# Git Alias to Show Affected Files in Last N Commits

I never heard about **Git** aliases before. Apparantly you can define `git` command aliases, so here goes a cool tip for getting started with aliases and of course a nice way to see what files where involved a specific number of commits back

Edit your `~/.gitconfig` and a alias section

```
[alias]
    lsch = "!f() { git diff --name-status -r "HEAD~$1"; }; f"
```

And then you can do:

```bash
$ git lsch 10
```

Output from my **TIL** repository, when writing this til (prior too committing)

```
$ git lsch 10
M   README.md
M   _config.yml
A   bash/create_dir_for_own_completions.md
M   editorconfig/perl.md
A   mojolicious/enable_syntax_highlighting_for_configuration_files.md
A   ubuntu/install_updates_via_cli.md
A   xml/fast_xml-xsd_validation_on_cli.md
```

Have fun exploiting the `git` command aliases

Source: [CoderWall](https://coderwall.com/p/8rtfgg/git-alias-to-show-affected-files-in-last-n-commits)
