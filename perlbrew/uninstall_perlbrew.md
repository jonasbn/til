# Uninstall perlbrew

If you are like me, sometimes you want to start over. For `perlbrew` this is quite easy. 

```bash
$ rm -Rf ~/perl5
```

And then clean your shell script (`bash` example), remove the following lines from your `~/.bash_profile`:

```bash
#perlbrew
source ~/perl5/perlbrew/etc/bashrc
```

I have done this several times, but decided to include this brief discussion from StackOverflow.

Source: (StackOverflow)[http://stackoverflow.com/questions/3741559/how-can-i-completely-uninstall-perlbrew#3741656]