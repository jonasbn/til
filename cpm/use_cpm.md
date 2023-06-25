# Use cpm

`cpm` is a tool for installing Perl modules from CPAN. It is alternative to `cpanm` and `cpan`.

I primarily use `cpanm`, but I received some PRs for [jonasbn/perl-workflow](https://github.com/jonasbn/perl-workflow), which made use of the GitHub Action: [shogo82148/actions-setup-perl][GHAPERL].

It offers:

- `cpanm`
- `cpm`
- `carton`

The PRs used several, so I decided to let `cpm` be used, so I can see how it works.

REF: [jonasbn/perl-workflow: .github/workflows/ci.yml](https://github.com/jonasbn/perl-workflow/blob/master/.github/workflows/ci.yml)

## Resources and References

- [MetaCPAN](https://metacpan.org/dist/App-cpm/view/script/cpm)
- [GitHub repository](https://github.com/skaji/cpm)
- [GitHub Action: shogo82148/actions-setup-perl][GHAPERL]

[GHAPERL]: https://github.com/marketplace/actions/setup-perl-environment
