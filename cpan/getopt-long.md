# Getopt::Long

[Getopt::Long][METACPAN] is a Perl module that provides an extended processing of command line options. It has been around for a long and is a standard part of the Perl distribution, since forever.

The usage is pretty easy:

```perl
      use Getopt::Long;
      my $data   = "file.dat";
      my $length = 24;
      my $verbose;
      GetOptions ("length=i" => \$length,    # numeric
                  "file=s"   => \$data,      # string
                  "verbose"  => \$verbose)   # flag
      or die("Error in command line arguments\n");
```

Above is lifted from the [Getopt::Long][METACPAN] documentation.

The `GetOptions` function takes a list of option specifications and a list of references to variables that will hold the values of the options. The options are specified as a list of pairs, where the first element is the option specification and the second element is the reference to the variable that will hold the value of the option.

This mean that your command line application with the above code can be called like this:

```bash
perl myscript.pl --length 42 --file /path/to/file --verbose
```

And since `--length`, `--file` and `--verbose` all start with different letters, you can also call it like this:

```bash
perl myscript.pl -l 42 -f /path/to/file -v
```

## Combining with reading from STDIN

If you want to read from STDIN, you can use the `<>` operator. This will read from STDIN if there are no arguments, or from the files specified in the arguments.

I made a script to sort Git tags, before learning about GNU sort, which has a `--version-sort option`. The script is called `sort-git-tags.pl` and it looks like this:

```perl
#!perl

use warnings;
use strict;
use Data::Dumper;
use Getopt::Long;

my $reverse;

GetOptions ('reverse'  => \$reverse)   # flag
    or die("Error in command line arguments\n");

# read all from standard input
my @tags = <STDIN>;

# remove newlines
chomp @tags;

my @sorted_tags = sort {
    ($b =~ /v?(\d+)\.\d+\.\d+/)[0] <=> ($a =~ /v?(\d+)\.\d+\.\d+/)[0]
                        ||
    ($b =~ /v?\d+\.(\d+)\.\d+/)[0] <=> ($a =~ /v?\d+\.(\d+)\.\d+/)[0]
                        ||
    ($b =~ /v?\d+\.\d+\.(\d+)/)[0] <=> ($a =~ /v?\d+\.\d+\.(\d+)/)[0]
                        ||
                fc($a)  cmp  fc($b)
} @tags;

# print sorted tags to standard output on separate lines
if ($reverse) {
    print join("\n", reverse @sorted_tags), "\n";
} else {
    print join("\n", @sorted_tags), "\n";
}

exit 0;
```

REF: [Gist:][GIST]

It can be called as follows:

```bash
git tag | perl sort-git-tags.pl
```

And if you want to reverse the order:

```bash
git tag | perl sort-git-tags.pl --reverse
```

## Resources and References

- [MetaCPAN: Getopt::Long][METACPAN]

[METACPAN]: https://metacpan.org/pod/Getopt::Long
[GIST]: https://gist.github.com/jonasbn/11f1630d56dccbdc516a53209e991d7f
