# Developing in Visual Studio Code

This is most certainly doable, but there are a few issues.

Do check the documentation for a list and more details. The one that bit me:

## Git push

> If you clone a Git repository using SSH and your SSH key has a passphrase, VS Code's pull and sync features may hang when running remotely. Either use an SSH key without a passphrase, clone using HTTPS, or run git push from the command line to work around the issue.

So just push from the Terminal or a WSL terminal.

## References

- [Visual Studio Code Documentation](https://code.visualstudio.com/docs/remote/wsl)
