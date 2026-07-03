# Ignore Git

These are my notes on Git ignore.

I recently received a PR proposing some changes to a `.gitignore` file. One of the lines was formatted as follows:

```gitignore
/Crypt-OpenSSL-X509-*
```

Having used `MANIFEST.SKIP` etc. for Perl distributions, the line puzzled me, since I believed it to be resolving based on the file system root, but apparently the root relative to the `.gitignore` file.

From the Git [documentation][GITDOC]:

> The pattern hello.* matches any file or directory whose name
> begins with hello.. If one wants to restrict this only to the
> directory and not in its subdirectories, one can prepend the
> pattern with a slash, i.e. /hello.*; the pattern now matches
> hello.txt, hello.c but not a/hello.java.

## About Gitignore in General

When you create a new repository on GitHub you can specify a `.gitignore` based on the language of your choice. I have some older repositories where I have not added this and sometimes I set up no--GitHub repositories so they are created without a good initial `.gitignore` file.

All of the files used by GitHub are available in a [repository][GITHUBIGNORE], so you can easily fetch them from there.

If you are in the first scenario, you can use the `gh` extension: [`gh-gitignore`][GHIGNORE], which will enumerate all of the available files using `fzf`.

If you are not using `gh` you could just use `curl` or similar

Example fetching `.gitignore` for Go:

```bash
curl -o gitignore https://raw.githubusercontent.com/github/gitignore/main/Go.gitignore
```

## Ignoring

I had created a small utility `gitignore` located in my `~/bin/`:

```perl
#!/usr/bin/env perl

use warnings;
use strict;

my $file = '.gitignore';

if (-e $file and -f _ and -w _) {
    open my $FOUT, '>>', $file or die "Unable to open file: $file - $!";
    print $FOUT "$ARGV[0]\n";
    close($FOUT);
} else {
    open my $FOUT, '>>', $file or die "Unable to open file: $file - $!";
    print $FOUT "$ARGV[0]\n";
    close($FOUT);
}

exit 0;
```

Where I would be able to ignore a file from the command line easily as:

```shell
gitignore file_to_be_ignored
```

Then I found out that `git` can already do this, via **git-extras**

```shell
git ignore file_to_be_ignored
```

You learn something every day.

## Resources and References

1. [Git documentation: gitignore][GITDOC]
1. [GitHub: gitignore][GITHUBIGNORE] - collection of gitignore examples
1. [gh extension: gh-gitignore][GHIGNORE]
2. [GitHub: git-extras][GITEXTRAS]

[GITHUBIGNORE]: https://github.com/github/gitignore
[GITDOC]: https://git-scm.com/docs/gitignore
[GHIGNORE]: https://github.com/ymmmtym/gh-gitignore
[GITEXTRAS]: https://github.com/tj/git-extras
