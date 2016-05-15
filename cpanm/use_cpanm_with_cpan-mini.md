# Use cpanm with CPAN::Mini

If you want install from your local CPAN::Mini mirror:

```bash
$ cpanm --from $HOME/minicpan Distribution::To::Install
```

If you want install from your local CPAN::Mini mirror and if this fail, installation continues as always:

```bash
$ cpanm --mirror $HOME/minicpan
```

You can specify your above choice more permanently using an environment variable:

```bash
export PERL_CPANM_OPT="--mirror $HOME/.minicpan --mirror-only"
```

[Source: StackOverflow](http://stackoverflow.com/questions/8139088/how-do-i-use-cpanminus-with-a-local-cpanmini)
