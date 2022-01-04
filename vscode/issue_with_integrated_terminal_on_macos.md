# Issue with integrated terminal on macOS

I started to observe the following when opening the integrated terminal in VScode:

```text
bash: /usr/local/share/bash-completion/bash_completion: line 251: conditional binary operator expected
bash: /usr/local/share/bash-completion/bash_completion: line 251: syntax error near `exclude'
bash: /usr/local/share/bash-completion/bash_completion: line 251: `    if [[ -v exclude ]]; then'

The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
```

I read some resources addressing the issue, but without success, the solution was in the documentation.

First you open the settings", via the menu: `Code` > `Preferences` > `Settings` (`⌘` + `,`) and click `Edit in settings.json`

Add a shell profile:

```json
"terminal.integrated.profiles.osx": {
    "bash": {
        "path": "/usr/local/bin/bash"
    }
}
```

And point to the profile:

```json
"terminal.integrated.defaultProfile.osx": "bash"
```

Do note that the settings _linter_ requires you to specify either: `bash`, `zsh` or `JavaScript Debug Terminal`, so what we do with the profile, is to overwrite the `bash` setting and then we can specify the path to our `bash` installed via **Homebrew**.

## Resources and References

- [VScode documentation](https://code.visualstudio.com/docs/editor/integrated-terminal#_terminal-profiles)
