# Installing bash

You can install a newer `bash` using `brew` if you want to go beyond the `bash` offered by the operating system distributed one from Apple.

Install from **Homebrew**:

```bash
$ brew install bash
```

Make the new `bash` interpreter located in `/usr/local/bin/` a login shell:

```bash
$ sudo echo '/usr/local/bin/bash' >> /etc/shells
```

Change your personal login shell

```bash
$ chsh -s /usr/local/bin/bash
```

Source: [Github](https://github.com/mathiasbynens/dotfiles/issues/544)
