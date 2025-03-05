# Working with your config

Git can be configured for a lot of parameters.

One of the cool features of Git config is that is can tell you where parameters are defined.

```shell
git config --list --show-origin
```

Outputs something along the lines of (abbreviated for readability):

```text
file:/opt/homebrew/etc/gitconfig        filter.lfs.clean=git-lfs clean -- %f
file:/opt/homebrew/etc/gitconfig        filter.lfs.smudge=git-lfs smudge -- %f
file:/opt/homebrew/etc/gitconfig        filter.lfs.process=git-lfs filter-process
file:/opt/homebrew/etc/gitconfig        filter.lfs.required=true

...

file:/Users/jonasbn/.gitconfig  delta.features=side-by-side line-numbers decorations
file:/Users/jonasbn/.gitconfig  delta.line-numbers=true
file:/Users/jonasbn/.gitconfig  delta.side-by-side=true
file:/Users/jonasbn/.gitconfig  delta.syntax-theme=Nord

...

file:.git/config        remote.origin.gh-resolved=base
file:.git/config        branch.master.remote=origin
file:.git/config        branch.master.merge=refs/heads/master
file:.git/config        branch.master.vscode-merge-base=origin/master
```

## Resources and References
  
- [StackOverflow: "How do I show my global Git configurations?"](https://stackoverflow.com/questions/12254076/how-do-i-show-my-global-git-configuration)
- [StackOverflow: "How can I remove an entry in a global configuration with Git config?"](https://stackoverflow.com/questions/11868447/how-can-i-remove-an-entry-in-global-configuration-with-git-config)
