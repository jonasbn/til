# Create directory for own bash completions

When you implement your own `bash` completions you can with luck install them in a local directory in your `$HOME` directory and then create a small shell helper script to source these.

Create the file: `~/.bash_completion`, containing the code below:

```bash
for bcfile in ~/.bash_completion.d/* ; do
  . $bcfile
done
```

Create a directory for your completions:

```bash
$ mkdir ~/.bash_completion.d
```

Copy your completions into the newly created directory:

```bash
$ cp your_bash_completion ~/.bash_completion.d/
```

Start a new shell and you should be good to go.

## References

- [ServerFault: Standard place for user defined bash_completion.d scripts?](https://serverfault.com/questions/506612/standard-place-for-user-defined-bash-completion-d-scripts)
