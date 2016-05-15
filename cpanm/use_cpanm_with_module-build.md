# Use cpanm with Module::Build

If you want to install using your Module::Build enabled toolchain (`Build.PL`), you can point this to an alternative client than the standard - this works like a charm for `cpanm`.

```bash
$ ./Build installdeps --cpan_client cpanm
```

[Source: MetaCPAN](https://metacpan.org/pod/distribution/Module-Build)
