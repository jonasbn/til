# Dist::Zilla and cpanfile

[Dist::Zilla](https://metacpan.org/pod/distribution/Dist-Zilla/lib/Dist/Zilla.pm) can work with a `cpanfile` as container for prerequisites.

This can be quite useful for interacting/integrating with other Perl toolchains elements like `carton` or `carmel`.

[Dist::Zilla](https://metacpan.org/pod/distribution/Dist-Zilla/lib/Dist/Zilla.pm) has a `cpanfile` consumer included in the distribution.

```
$ dzil build
```

Will generate a `cpanfile` based on the prerequisites listed in `dist.ini` using [Dist::Zilla::Plugin::CPANFile](https://metacpan.org/pod/Dist::Zilla::Plugin::CPANFile).

For using `cpanfile` as the primary resource for prerequisites so you do not have to maintain the same information in several places you can use: [Dist::Zilla::Plugin::Prereqs::FromCPANfile](https://metacpan.org/pod/Dist::Zilla::Plugin::Prereqs::FromCPANfile).

A nifty trick I used for generating a `cpanfile` for later use, since I want the `cpanfile` to be a the primary source for prerequisites is letting `dzil` generate the initial version.

Add the following line to your `dist.ini`

`[CPANFile]`

Build:

```bash
$ dzil build
```

Copy the `cpanfile`

```bash
$ cp <distribution build dir>/cpanfile .
```

Change the line in your `dist.ini`

From:

`[CPANFile]`

To:

`[Prereqs::FromCPANfile]`

And you are good to go.

Using the newly generated `cpanfile`, requires the installation of: [Dist::Zilla::Plugin::Prereqs::FromCPANfile](https://metacpan.org/pod/Dist::Zilla::Plugin::Prereqs::FromCPANfile)

