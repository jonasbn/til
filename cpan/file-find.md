# File::Find

[File::Find] is awesome for processing files and directories recursively.

Normally you would just provide a processor function and one or more arrays to traverse. This is outlined in the synopsis.

```perl
use File::Find;
find(\&wanted, @directories_to_search);
sub wanted { ... }
```

It also has the capabilities to both _post process_ and _pre process_.

This requires that you call `find` with a set of options instead:

```perl
find({ wanted => \&_process, preprocess => \&_preprocess }, @directories_to_search);
```

I had a hard time getting my head around the preprocessing, but [this answer from StackOverflow][StackOverflow] filled in the blanks.

> The preprocess function is expected to return a (possibly modified) list of items to examine further. In your example, you can add @_; at the end of preprocess to return the arguments unmodified.
> You can do something like grep { $_ !~ /pattern/ } @_ to filter out unwanted items, and so on.

Here follows a basic prototype I did for my `yak` side-project, based heavily on [File::Find].

```perl
#!/usr/bin/env perl

use strict;
use warnings;
use v5.10; # say
use File::Find; # find

find({ wanted => \&_process, preprocess => \&_preprocess }, $ARGV[0]);

exit 0;

sub _process {
    say 'we are in process';
}

sub _preprocess {
    say 'we are in preprocess';

    # This is quite important
    # See quote in TIL text
    return @_;
}
```

Another interesting aspect is the ability to _prune_, which is used for describing the process of cutting of branches of trees etc. (see [Wikipedia]).

When you are processing large directory structures this can be quite useful. For example if you do not want to process `git` directories.

```perl
sub _proces {
    /^.git\z/s && ($File::Find::prune = 1);

    # ...
}
```

## Resources and References

1. [StackOverflow: "Find::File preprocess"][StackOveflow]
1. [Perldoc.org: File::Find][File::Find]

[File::Find]: https://perldoc.perl.org/File::Find
[StackOverflow]: (https://stackoverflow.com/questions/5599793/findfile-preprocess)
[Wikipedia]: https://en.wikipedia.org/w/index.php?title=Fruit_tree_pruning
