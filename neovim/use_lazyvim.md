# Use LazyVim

## Show Hidden files in Explorer and Picker

```lua
return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = {
            hidden = true,   -- Show hidden/dotfiles
            ignored = false, -- Respect .gitignore
          },
          grep = {
            hidden = true,   -- Also search in hidden files
            ignored = false,
          },
        },
      },
    },
  },
}
```

REF: [LazyVim GitHub Discussions](https://github.com/LazyVim/LazyVim/discussions/6807)

## Resources and References

- https://www.lazyvim.org/
- https://www.youtube.com/watch?v=N93cTbtLCIM
- https://lazyvim-ambitious-devs.phillips.codes/course/chapter-1/#_choosing_a_terminal

- https://darkhelmet.github.io/cheats/tools/vim-lazyvim/#lazyvim-specific
