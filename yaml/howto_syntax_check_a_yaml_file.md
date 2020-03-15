# How to syntax check a YAML file

Sometime you come across applications or projects using *YAML* and you start _hacking away_ and things go awry, `ysh` is your friend.

```bash
% cat giving_me_headache.yml | ysh
```

`ysh` can be installed from Perl's YAML::Shell distribution available on CPAN.

There are alternatives to `ysh` like `yq`.

`yq` is a wrapper on `jq`, which is a JSON tool.

There is even [a GitHub-Action](https://kislyuk.github.io/yq/) for it.

## References and Resources

- [MetaCPAN: YAML::Shell](https://metacpan.org/pod/distribution/YAML-Shell/lib/YAML/Shell.pod)
- [GitHub: yq](https://kislyuk.github.io/yq/)
- [yq GitHub Action](https://kislyuk.github.io/yq/)
