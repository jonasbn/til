# Unsuitable Terminal

**ghostty** is a new formidable terminal emulator. I wanted to try it out, but when I attempted to SSH to some remote hosts I got the following error:

```text
missing or unsuitable terminal: xterm-ghostty
```

I did some _googling_ and found [a blog post][vninja], which suggested 3 different workarounds.

One was updating `term_info` on the remote host, this is somewhat cumbersome and not something I wanted to maintain going forward with updates on the remote host.

Second was by the blog post author and involved changing the `TERM` environment variable to something more recognisable than: `xterm-ghostty`.

```shell
[[ "$TERM_PROGRAM" == "ghostty" ]]; then
    export TERM=xterm-256color
```

The last one, which I chose to go with was changing my SSH configuration on my local machine, so the environment variable was set as part of the SSH configuration:

```text
SetEnv TERM=xterm-256color
```

The last part works like a charm as sort of does the same as the second one.

## Resources and References

- [vNinja.net: "Ghostty — Workaround for Missing or Unsuitable Terminal xterm-ghostty"][vninja]

[vninja]: https://vninja.net/2024/12/28/ghostty-workaround-for-missing-or-unsuitable-terminal-xterm-ghostty/
