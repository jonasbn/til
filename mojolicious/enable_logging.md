# Enable logging

Just add a directory named `log` to you application root folder.

```bash
$ cd my_app
$ mkdir log
```

However this tip does not seem to work with newer version of Mojolicious, so you might have to add the following to your application.

## Mojolicious::Lite

```perl
use Mojo::Log;

my $log = Mojo::Log->new( path => 'log/development.log', level => 'debug' );
app->log($log);
```

## Mojolicious Application

```perl
use Mojo::Log;

# Log to STDERR
my $log = Mojo::Log->new;

# Customize log file location and minimum log level
my $log = Mojo::Log->new(path => '/var/log/mojo.log', level => 'warn');
```

Above example lifted from [Mojo::Log][MOJOLOG]

## Resources and References

- [StackOverflow: How to control logging for Mojolicious web server][SO]
- [PerlZemi: Check the log][PERLZEMI]
- [Mojo::Log][MOJOLOG]

[SO]: https://stackoverflow.com/questions/70803181/how-to-control-logging-for-mojolicious-web-server
[PERLZEMI]: https://en.mojolicious.perlzemi.com/blog/20091215126018.html
[MOJOLOG]: https://metacpan.org/pod/Mojo::Log
