# Tailing cpanm build logfile

When using tools like `cpanm` want to be able to `tail` the log file generated for build. `cpanm` offers a canonical log file at: `$HOME/.cpanm/build.log` in addition to the temporary log files located in the `$HOME/.cpan,/work/*` directories.

But the `$HOME/.cpanm/build.log` changes with every build, so `tail -f $HOME/.cpanm/build.log` falls short.

So the tip is to use `tail -F $HOME/.cpanm/build.log` instead.

Source: [SuperUser.com](http://superuser.com/questions/155213/tail-f-not-tracking-file-changes#155214)