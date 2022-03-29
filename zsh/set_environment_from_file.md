# Set Environment From File

I ran into this challenge where a given CLI client (Jira) relies on the password being transported via an environment variable.

Since my dot files are handled via a dot file manager, I do not want to set a password directly in those files. So I isolated the password to a separate file and looked into how I could get this exported to the environment.

```zsh
v=$(cat $HOME/.JIRA_API_TOKEN) export JIRA_API_TOKEN=$v
```

This can then be added to your `.bashrc` or `.zshrc`.

## Resources and References

1. [StackOverflow: "How to read a file into a variable in shell?"](https://stackoverflow.com/questions/7427262/how-to-read-a-file-into-a-variable-in-shell)
