# Mojolicious::Plugin::Config

The default for suffix for configuration files, which might be used by other frameworks etc. and the contents of the Mojolicious::Plugin::Config files are actually **Perl**.

[Mojolicious::Plugin::Config][METACPAN] is quite powerful so you can just _configure_ it to respect your new extension.

So in order to differentiate and get my text editor to enforce a distinction for syntax highlighting, I renamed my configuration file to `.pconf`indicating **Perl** formatted configuration.

See examples below, for how to configure Mojolicious::Plugin::Config to respect the new extension - do note the dot/period `.` is not specified.

## Mojolicious::Lite

```perl
plugin Config => {ext => 'pconf'};
```

## Mojolicious Application

```perl
my $config = $self->plugin('Config', ext => 'pconf');
```

## References

- [MetaCPAN: Mojolicious::Plugin::Config][METACPAN]
- [MetaCPAN: Mojolicious::Plugin::Config: ext][METACPANEXT]

[METACPAN]: https://metacpan.org/pod/Mojolicious::Plugin::Config
[METACPANEXT]: https://metacpan.org/pod/Mojolicious::Plugin::Config#ext
