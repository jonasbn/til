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

The solution is what is called _Here documents_ a feature I know from Perl, but not often use.

Since I writing a new file, the construct should be changed to:

```bash
# VScode specific
# disable GitHub Copilot
echo "Disabling GitHub Copilot in VScode via Workspace settings"
mkdir .vscode

cat <<EOT > .vscode/settings.json
{
  "github.copilot.enable": {
    "*": false
  }
}
EOT
```

Since `>>` appends to an existing file or creates it if does not exist and `>` just directs the output and creates the file, overwriting it if exists.

I cannot really handle appending since the file is a JSON structure so this would require working on the JSON, not just appending.

## Resources and References

- [StackExchange: Unix & Linux: "How to append multiple lines to a file"](https://unix.stackexchange.com/questions/77277/how-to-append-multiple-lines-to-a-file)
- [Geeksforgeeks: "Write to a File From the Shell"](https://www.geeksforgeeks.org/write-to-a-file-from-the-shell/)
