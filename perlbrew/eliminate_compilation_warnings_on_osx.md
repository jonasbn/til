# Eliminate compilation warnings on OSX

When compiling **XS** modules on **OSX**, you might get some warnings like:

```
ld: warning: object file (SystemDirectory.o) was built for
newer OSX version (10.11) than being linked (10.4)
```

This can be eliminated by specifying your **OSX** version, when building new perls under **Perlbrew**

```bash
PERLBREW_CONFIGURE_FLAGS='-de -Dccflags="-mmacosx-version-min=10.12" \
-Dccdlflags="-mmacosx-version-min=10.12" \
-Dldflags="-mmacosx-version-min=10.12" \
-Dlddlflags="-mmacosx-version-min=10.12"' \
perlbrew install 5.22.3 --64all -j 2
```

## References

- [Blog of Karl Kornel](http://karl.kornel.us/2015/12/perl-osx-1011-warnings/)
