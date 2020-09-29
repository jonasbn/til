# Find out if a given Perl distribution is included in core

Sometimes you need to find out if a given Perl distribtution is in included in the core and since when.

Luckily we have [Module::CoreList][MCL] by Chris Willliams.

Using a simple CLI tool [`corelist`][corelist] you can inquire a distribtion name quite easily.

```bash
$ corelist Test::Timer

Data for 2020-09-20
Test::Timer was not in CORE (or so I think)
```

Well my stuff does not go into core, so let's try something more cool.

```bash
$ corelist Data::Dumper

Data for 2020-09-20
Data::Dumper was first released with perl 5.005
```

Remember to update your installation of [Module::CoreList][MCL] often so your data on what is in core and what is not is up to date.

## Resources and References

- [MetaCPAN: Module::CoreList][MCL]
- [MetaCPAN: corelist][corelist]

[MCL]: https://metacpan.org/pod/Module::CoreList
[corelist]: https://metacpan.org/pod/distribution/Module-CoreList/corelist
