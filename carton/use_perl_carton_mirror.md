# Use PERL_CARTON_MIRROR

`carton` has a somewhat undocumented environment variable: `$PERL_CARTON_MIRROR`, this can be used to point to your local Perl distribution repository, being a mirror or a darkpan.

```bash
$ PERL_CARTON_MIRROR=http://darkpan.yourdomain carton install
```

[Source: Github](https://github.com/perl-carton/carton/pull/183)
