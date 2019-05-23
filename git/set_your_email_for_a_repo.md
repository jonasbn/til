# Set your email for a repository

If you use `git` for both work and play, but not necessarily the all on *github* or the like, it is nice to separate user data like email

Globally:

```bash
$ git config --global user.email "your_email@example.com"
```

Per repository:

```bash
$ git config user.email "your_email@example.com"
```

[Source: Github](https://help.github.com/articles/setting-your-email-in-git/)

And when you find out after you have checked out a lot of repositories

```bash
$ find . -type d -maxdepth 1 -exec bash -c "cd '{}' ; git config user.email 'your_email@example.com'"  \;
```

## References

- [StackExchange](http://unix.stackexchange.com/questions/187167/traverse-all-subdirectories-in-and-do-something-in-unix-shell-script)
