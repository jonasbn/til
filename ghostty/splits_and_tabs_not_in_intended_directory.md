# Splits and Tabs Not in Intended Directory

This might be a **macOS** [issue](https://github.com/ghostty-org/ghostty/discussions/4123) alone.
But the suggestion solution based on [a gist](https://gist.github.com/fengyu225/b3f5c4181d98d73385bf1f2065ae517a/9d7a09e02976271a12c115e998e66f102c7fed32) works for me.

I added the following snippet to my `.zshrc`

```shell
autoload -Uz add-zsh-hook
__emit_osc7_cwd() {
  print -Pn '\e]7;file://%m%d\e\\'
}
add-zsh-hook precmd __emit_osc7_cwd
```

And the following to my **Ghostty** config:

`shell-integration = detect`

And now it works.

