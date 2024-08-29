# Use perlcritic

[perlcritic](https://metacpan.org/pod/Perl::Critic) is a static code analysis tool for Perl. It checks your code for compliance with a set of coding standards.

A global configuration for you account can be created by running the following command:

```bash
perlcritic --profile-proto >> $HOME/.perlcriticrc
```

A local configuration, for example for a repository, can be created by running the following command:

```bash
perlcritic --profile-proto >> .perlcriticrc
```

## Resources and References

- [MetaCPAN: Perl::Critic](https://metacpan.org/pod/Perl::Critic)
- [Perl::Critic](https://perlcritic.com/)
