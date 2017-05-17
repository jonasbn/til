# Enable syntax_highlighting for configuration files

Using the defacto standard **Mojolicious** plugin for configuration files [Mojolicious::Plugin::Config](http://mojolicious.org/perldoc/Mojolicious/Plugin/Config) you get the standard files ending in the suffix `.conf` - this is a very generic name.

The configuration files are actually containing a basic **Perl** data structure and since this is a basic **Perl** data structure, you could utilize you favorite editor to do syntax highlighting of the contents, making it easier to spot stupid mistakes and _fat-fingering_.

You could tweak your editor to just regard `.conf` as Perl files, but as stated the name is pretty generic, so it might clash with other non-Perlish formats.

Luckily [Mojolicious::Plugin::Config](http://mojolicious.org/perldoc/Mojolicious/Plugin/Config) has a emminent future letting you define the default suffix to be used.

I have tweaked my editor to recognise `.pconf` (the `p` is for **Perl**).

So when I load the plugin, I simply have to specify the suffix:

```perl
my $config = $self->plugin('Config', { ext => 'pconf' });
```

Instead of:

```perl
my $config = $self->plugin('Config');
```





