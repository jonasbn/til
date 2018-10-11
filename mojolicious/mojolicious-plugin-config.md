# Mojolicious::Plugin::Config

The default for suffix for configuration files, which might be used by other frameworks etc. and the contents of the Mojolicious::Plugin::Config files are actually **Perl**

Mojolicious::Plugin::Config is quite powerfull so you can just _configure_ it to respect your new extension.

So in order to differentiate and get my text editor to enforce a distinction for syntax hightlighting, I renamed my configuration file to `.pconf`indicating **Perl** formatted configuration.

```perl
my $config = $self->plugin('Config', ext => 'pconf');
```

## References

- [MetaCPAN](https://metacpan.org/pod/Mojolicious::Plugin::Config#ext)
