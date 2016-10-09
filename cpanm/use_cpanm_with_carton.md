# Use cpanm with carton

Sometimes a distribution might prove difficult to install using `carton` (via your `cpanfile`)

So if we have a `cpanfile` looking like the following:

```perl
requires 'Your::TroubleSome::Distribution';
```

And the installation will not go through using `carton`:

```bash
$ carton
```

You can use `cpanm` with the `-l` parameter:

```bash
$ cpanm -l local/ Your::TroubleSome::Distribution
```

Note that the `-l` parameter, just points to a directory and `local/`, is just the default installation point for `carton`.

This does hold a minor issue and that is that the `cpanfile.snapshot` is not updated as part of the `carton` run - do not dispair.

```bash
$ carton install
```

This additional step will update your `cpanfile.snapshot` accordingly and everything will be in sync.

[Source: MetaCPAN](https://metacpan.org/pod/distribution/App-cpanminus/bin/cpanm)
