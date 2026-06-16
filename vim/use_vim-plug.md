# Use vim-plug

`vim-plug` is a minimalist Vim plugin manager.

I have just started using it, and it is very easy to use.

I ran into a [single problem](../vim/cannot_install_vim_plugin.md) when installing the Nord theme, but that was due to a challenge with the plugin.

The installation is problematic as it using `curl` so I would recommend evaluating the contents downloaded first:

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Add the following to your: `.vimrc`:

```text
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'

call plug#end()
```

Restart `vim` and you get a new set of commands you can use in `vim`

`:PlugInstall` to install the plugins
`:PlugUpdate` to install or update the plugins
`:PlugDiff` to review the changes from the last update
`:PlugClean` to remove plugins no longer in the list

There are a plethora of plugins, do have a look at: [vim awesome][vimawesome]

## Resources and References

- [GitHub: junegunn/vim-plug](https://github.com/junegunn/vim-plug)
- [Over view of plugins: vim awesome][vimawesome] - _Awesome Vim plugins from across the Universe_
- [How to Extend Vim's Functionality by Adding Plugins](https://linuxhandbook.com/install-vim-plugins/)

[vimawesome]: https://vimawesome.com/
