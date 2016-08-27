# How to syntax check a YAML file

Sometime you come across applications or projects using *YAML* and you start _hacking away_ and things go awry, `ysh` is your friend.

```bash
% cat giving_me_headache.yml | ysh
```

`ysh` can be installed from Perl's YAML::Shell distribution available on CPAN.

Source [MetaCPAN: YAML::Shell](https://metacpan.org/pod/distribution/YAML-Shell/lib/YAML/Shell.pod)