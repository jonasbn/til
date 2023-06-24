# Use Renovate for Perl

I really really like [Dependabot](https://github.com/dependabot) and I use it for all my projects/repositories.

However, I have a few Perl projects and Dependabot does not support Perl.

I have looked at Renovate for other things and the other day I received a bunch of PRs from Renovate for my Perl repositories.

Apparently Renovate _now_ supports Perl or it supports handling the `cpanfile`. I was able to locate this [PR][RENOVATECPANFILE].

See the [examples](https://github.com/jonasbn/perl-critic-policy-builtinfunctions-prohibitshelldispatch/pulls?q=is%3Apr+author%3Aapp%2Frenovate).

I have processed most of them and I am quite happy with the result.

Renovate also creates [an issue](https://github.com/jonasbn/perl-critic-policy-builtinfunctions-prohibitshelldispatch/issues/9), which is sort of a Dashboard for the PRs, which is good, eventhough I hate the idea of having an issue open for _all eternity_. Anyway from the Dashboard issue you can control Renovate.

The [documentation](https://docs.renovatebot.com/modules/manager/cpanfile/) is not much to write home about.

Do note that Perl is a language is not listed as supported but `cpanfile` is listed as a [manager][RENOVATEMANAGERS].

I have not been able to locate any documentation on how to configure Renovate for Perl, but I have been able to locate a [configuration option][RENOTEVATEIGNOREDEPS] for ignoring dependencies.

This might be useful since I do not want to receive PRs for the actual Perl version required. As you can see from [the examples](https://github.com/jonasbn/perl-critic-policy-builtinfunctions-prohibitshelldispatch/pull/13), I received a PR to update the requirement in the `cpanfile` to `5.37.11`, which is not really what I want, since this sort of contradicts the Perl philosophy of backwards compatibility. You could argue that it is the same thing for the dependencies, but since this is they way I handle dependencies in other languages, I am fine with it.

For now I have declined the PRs for the Perl version requirement, but I am considering to configure Renovate to ignore the Perl version requirement.

So in my Renovate configuration I have specified the following:

```json
{
  "$schema": "https://docs.renovatebot.com/renovate-schema.json",
  "ignoreDeps": ["perl"],
  "extends": [
    "config:base"
  ]
}
```

Lifted from: [jonasbn/perl-critic-policy-builtinfunctions-prohibitshelldispatch: .github/renovate.json](https://github.com/jonasbn/perl-critic-policy-builtinfunctions-prohibitshelldispatch/blob/master/.github/renovate.json)

Next thing up is to work out how to work with core modules.

An item for the wishlist could be to have Renovate support `cpanfile.snapshot` as well, perhaps it does not make sense, because it is auto-generated, but at the same time that is how it works for other languages like Go for example.

## Resources and References

- [Renovate][RENOVATE]
- [Renovate: cpanfile support introduction][RENOVATECPANFILE]
- [Renovate: ignoredeps][RENOTEVATEIGNOREDEPS]
- [Renovate: managers][RENOVATEMANAGERS]

[RENOVATE]: https://renovatebot.com/
[RENOVATECPANFILE]: https://github.com/renovatebot/renovate/pull/16545
[RENOTEVATEIGNOREDEPS]: https://docs.renovatebot.com/configuration-options/#ignoredeps
[RENOVATEMANAGERS]: https://docs.renovatebot.com/modules/manager/
