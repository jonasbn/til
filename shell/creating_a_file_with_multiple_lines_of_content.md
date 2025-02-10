# Creating a file with multiple lines of content

I sometimes remember to script stuff I do multiple times by hand.

For my Exercism exercises, I have created a minor helper script to set up the directory for solving the exercise, using Git and eliminating use of GitHub copilot, since it spoils the fun.

For the last part I need to write several lines to the VScode setting file, so it would look as follows:

```json
{
  "github.copilot.enable": {
    "*": false
  }
}
```

From my shell script, this can be accomplished as follows:

```bash
# VScode specific
# disable GitHub Copilot
echo "Disabling GitHub Copilot in VScode via Workspace settings"
mkdir .vscode

cat <<EOT >> .vscode/settings.json
{
  "github.copilot.enable": {
    "*": false
  }
}
EOT
```

So all from `<<EOT` until `EOT` os concatenated into: `.vscode/settings.json`.

Just simple and marvellous.

## Resources and References

- [StackExchange: Unix & Linux: "How to append multiple lines to a file"](https://unix.stackexchange.com/questions/77277/how-to-append-multiple-lines-to-a-file)
