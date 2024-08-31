# Test::Compile

Test::Compile is a nice module to test the compilation of all the modules and scripts in a distribution. It is a good practice to include a test script that checks the compilation of all the modules in a distribution. This is a simple way to catch syntax errors and other compilation errors before the distribution is installed.

And you can with luck use it in a CI/CD pipeline to catch errors before they are deployed.

This is the common way to use Test::Compile:

```perl
#!perl
use strict;
use warnings;
use Test::Compile qw();

my $test = Test::Compile->new();
$test->all_files_ok();
$test->done_testing();
```

Do note that `*.pl` files are expected to be in one of the following directories:

- `bin/`
- `script/`
- `scripts/`

Else you have to specify this explicitly:

```perl
#!perl
use strict;
use warnings;
use Test::Compile qw();

my $test = Test::Compile->new();
$test->all_files_ok('myscript.pl');
$test->done_testing();
```

You can add the directory: `./` if you modules or scripts are located in the root.

```perl
$test->all_files_ok("./");
```

Do however note that this also compiles everything in `local/` if you are using Carton.

## CI/CD Pipeline Using GitHub Actions

For use in a CI/CD pipeline, you could set up your GitHub Action workflow as follows:

```yaml
name: Compile and test Perl code
on: push

# REF: https://github.com/marketplace/actions/install-with-cpanminus
jobs:

    perl-versions:
      runs-on: ubuntu-latest
      name: List Perl versions
      outputs:
        perl-versions: ${{ steps.action.outputs.perl-versions }}
      steps:
        - id: action
          uses: perl-actions/perl-versions@v1
          with:
            since-perl: "5.38"
            with-devel: false

    perl_tester:
      runs-on: ubuntu-latest
      name: "Perl ${{ matrix.perl-version }}"
      needs: [perl-versions]

      strategy:
        fail-fast: false
        matrix:
          perl-version: ${{ fromJson (needs.perl-versions.outputs.perl-versions) }}

      container: perldocker/perl-tester:${{ matrix.perl-version }}

      steps:
        - uses: actions/checkout@v4
        - name: uses install-with-cpanm
          uses: perl-actions/install-with-cpanm@v1
          with:
            cpanfile: "cpanfile"
            sudo: false
        - run: prove -v
```

The last part executing `prove -v` is the test running step and it would execute the tests located in the `t/` directory.

The recommendation is to put the Test::Compile test in the `t/` directory and name it `00-compile.t` so it is run first.

## Resources and References

- [MetaCPAN: Test::Compile](https://metacpan.org/pod/Test::Compile)
