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

## Resources and References

1. [Git documentation: gitignore][GITDOC]
1. [GitHub: gitignore][GITHUBIGNORE] - collection of gitignore examples
1. [gh extension: gh-gitignore][GHIGNORE]

[GITHUBIGNORE]: https://github.com/github/gitignore
[GITDOC]: https://git-scm.com/docs/gitignore
[GHIGNORE]: https://github.com/ymmmtym/gh-gitignore
