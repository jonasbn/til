# bashrc not being sourced

> Note that bash has an exceptionally convoluted configuration system. bashrc is not
> loaded if .bash_profile exists. And many stupid curl-based install scripts generate .
> bash_profile files.
>
> As a defensive measure, you can write your own .bash_profile that explicitly loads .
> bashrc. This avoids ambiguity and offers a consistent, straightforward setup every time.

NB _The above quote has a spelling error corrected_

## Resources and References

1. [Reddit: WSL2 isn't processing my ~/.bashrc on initialization](https://www.reddit.com/r/bashonubuntuonwindows/comments/l6y66i/wsl2_isnt_processing_my_bashrc_on_initialization/)
