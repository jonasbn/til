# Format Numbers

For formatting numbers in Perl in respect to locale for example for currencies, the CPAN distribution can be of help.

In Denmark the thousand separator is `.`, which is the decimal separator in USA.

And vice-verse the `,` is the decimal separator in Denmark and the thousand separator in USA.

```perl
use Number::Format;

my $number = 1234.5;

my $nf = new Number::Format(-thousands_sep   => '.',
                            -decimal_point   => ',');

print $nf->format_number($number);

exit 0;
```

Outputs:

```text
1.234,5
```

And if you want to use USA notation.

```perl
use Number::Format;

my $number = 1234;

my $nf = new Number::Format(-thousands_sep   => ',',
                            -decimal_point   => '.');

print $nf->format_number($number);

exit 0;
```

Outputs:

```text
1,234.5
```

## Resources and References

- [StackOverflow](https://stackoverflow.com/questions/6158166/how-to-format-numbers-with-locale-based-decimal-separator-in-perl)
- [MetaCPAN: Number::Format](https://metacpan.org/pod/Number::Format)
