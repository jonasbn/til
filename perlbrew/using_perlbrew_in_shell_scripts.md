# Using perlbrew in Shell Scripts

If you are going to use Perlbrew in a shell script on **macOS**, you need to include the following:

```bash
#!/bin/bash
source $HOME/perl5/perlbrew/etc/bashrc
perlbrew use perl-5.28.0
```

## An Example

For my local test of my `yak` Perl application, I use the following script:

```bash
#!/bin/bash

source $HOME/perl5/perlbrew/etc/bashrc

perlbrew use perl-5.34.0@app-yak

perl -I $HOME/develop/github-jonasbn/perl-app-yak/lib \
        $HOME/develop/github-jonasbn/perl-app-yak/script/yak \ --noconfig \
        --nochecksums \
        .

source $PERLBREW_HOME/init
```

## Resources and References

- [Perlbrew website: "Perlbrew In Shell Scripts"](https://perlbrew.pl/Perlbrew-In-Shell-Scripts.html)
