# Avoid issues with META.yml with Module::Install

Some distributions using Module::Install have issues with the META.yml not being updated to reflect the actual distribution, like version number etc.

This can be avoided by setting the Module::Install integration in author mode.

This is accomplished by adding the directory: .author to inc/

```bash
$ mkdir inc/.author
```

Source [MetaCPAN: Module::Install](https://metacpan.org/pod/distribution/Module-Install/lib/Module/Install.pod)
