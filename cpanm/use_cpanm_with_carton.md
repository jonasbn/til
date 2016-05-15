# Use cpanm with carton

Sometimes a module might prove difficult to install using `carton` (via your cpanfile)

```bash
$ cpanm -l local/ Your::TroubleSome::Distribution
```

Note that the `-l` parameter, just points to a directory and `local/`, is just the default installation point for `carton`.

[Source: MetaCPAN](https://metacpan.org/pod/distribution/App-cpanminus/bin/cpanm)
