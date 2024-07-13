# Cannot install vim plugin

When running the following command in `vim`:

```bash
:PlugInstall
```

And you observe an error resembling this:

```
Cloning into '...'
fatal: could not read Username for 'https://github.com': terminal prompts disabled
```

1. Check that you Git is working.
1. Check that you spelled the plugin name correctly.

I experiences this issue with the Nord theme, where the documentation states:

```bash
Plug 'arcticstudio/nord-vim'
```

But the GitHub repository is called `nordtheme/vim`.

So my `.vimrc` ended up looking like this:

```bash
call plug#begin()

" List your plugins here
" Nord colour theme
" Plug 'arcticstudio/nord-vim'
Plug 'nordtheme/vim'

call plug#end()

colorscheme nord
```

## Resources and References

- [StackExchange: Cannot install vim plugin due to git problem](https://vi.stackexchange.com/questions/38067/cannot-install-vim-plugin-due-to-git-problem)
- [Nord theme website: vim installation and activation](https://www.nordtheme.com/docs/ports/vim/installation)
- [GitHub: nordtheme/vim](https://github.com/nordtheme/vim)
