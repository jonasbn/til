# Get Started Linting with Perl::Critic

When you alter your Perl::Critic configuration outlined in the `perlcriticrc` file, you can run check your source code against the new configuration. This is a good practice when adopting a new Perl::Critic configuration or when starting to use Perl::Critic on a project, which has not been _criticized_ before.

Firstly you have to install Perl::Critic.

```bash
cpanm Perl::Critic
```

Then you can run the following command to check your source code against the new configuration.

```bash
perlcritic .
```

If you want to use a different configuration file, you can use the `--profile` flag.

```bash
perlcritic --profile your_perl_critic_profile .
```

And if you want to make sure no profiles are used.

```bash
perlcritic --noprofile .
```

When starting to criticize a project, which has not been _criticized_ before, you can get overwhelmed by the sheer number of violations.

Luckily Perl::Critic has a `--severity` flag, which allows you to only show violations of a certain severity.

- `gentle` (`5`) - default
- `stern` (`4`)
- `harsh` (`3`)
- `cruel` (`2`)
- `brutal` (`1`)

You can use the `--severity` flag to only show violations of a certain severity.

```bash
perlcritic --profile-proto
```
