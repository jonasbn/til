# substring Outside String

When you use `substr` to extract a substring from a string, you may encounter the error message `substr outside of string at ...`. This error occurs when the `substr` function is called with an index that is outside the bounds of the string.

```perl
use 5.010;
use strict;
use warnings;

my $str = "Hello Perl World";
my $part = substr $str, 6, 4;
say qq('$part');

my $other = substr $str, 11, 10;
say qq('$other');


my $more = substr $str, 20, 10;
```

Example copied from: [Perl Maven][PERLMAVEN]

It results in the following output:

```shell
$ perl hello_perl_world.pl
'Perl'
'World'
substr outside of string at hello_perl_world.pl line 13.
```

I ran into the same warning, when doing an Exercism challenge: "Atbash Cipher"

I added a little code to my implementation to suppress the warning. The code is intended to format the cipher text into groups of 5 characters, separated by a space. The code is as follows:

```perl
sub _format_cipher ($phrase) {

    my $group_length = 5;
    my $formatted_phrase = '';

    my $position = 0;
    while (my $group = substr $phrase, $position, $group_length) {

        if ($position + $group_length > length $phrase) {
            $group_length = length($phrase) - $position;
        }

        $formatted_phrase .= $group;
        $formatted_phrase .= ' ';

        $position += $group_length;
    }

    chop $formatted_phrase;

    return $formatted_phrase;
}
```

Since the `substr` function is called within a `while` loop, the warning is triggered when the index is outside the bounds of the string. The warning is suppressed by setting the `$group_length` to the length of the remaining string, when the index is outside the bounds of the string.

So if we apply this to the basic hello world example, we get the following following solution:

```perl
my $position = 6;
my $length = 4;

my $str = 'Hello Perl World';
my $part = substr $str, $position, $length;
say qq('$part');

$position = 11;
$length = 10;

my $other = substr $str, $position, $length;
say qq('$other');

$position = 20;
$length = 10;

if ($position + $length < length $str) {
    my $more = substr $str, 20, 10;
    say qq('$more');
}
```

```shell
perl hello_perl_world_no_warnings.pl
'Perl'
'World'
```

The original example is hard-coded to demonstrate the warning, which is the easiest way. The challenge however is the same since you might be using `substr` in a loop or with variable arguments, so it is a good idea to implement safe guards to prevent the warning from being triggered and to control the output of the function.

## Resources and References

- [Perl Maven: "substr outside of string at ..."][PERLMAVEN]
- [Exercism: "Atbash Cipher" in Perl][EXERCISM_PERL]
- [Solution: "Atbash Cipher" in Perl][EXERCISM_PERL_SOLUTION]

[PERLMAVEN]: https://perlmaven.com/substr-outside-of-string
[EXERCISM_PERL]: https://exercism.org/tracks/perl5/exercises/atbash-cipher
[EXERCISM_PERL_SOLUTION]: https://exercism.org/tracks/perl5/exercises/atbash-cipher/iterations
