# Get ExtUtils::MakeMaker to install in local/ like carton

I use `carton` and it's `local/` directory for alot of projects. I ran into an issue where I needed to install something into local by hand.

Often you can accomplish this with `cpanm` like so:

```bash
$ cpanm -l local Math-Pari-2.01080900.zip
```

But if you need to provide special parameters to the build phase/system, you can do something along the lines of:

```bash
$ unzip Math-Pari-2.01080900.zip

$ cd Math-Pari-2.01080900

$ perl Makefile.PL --parilib=~/pari-2.1.7 LIB=~/dev/project/local/lib

$ make && make test && make install
```

And the product of your build should end up in the right place. Do note the `lib` and the end of the path, which is one of the standard directories in local maintained by `carton`.

Source [MetaCPAN: ExtUtils::MakeMaker](https://metacpan.org/pod/ExtUtils::MakeMaker#PREFIX-and-LIB-attribute)
