# Read Input via Pipe

```bash
$ cat file | perl script.pl

```perl
while (<>)
{
  print $_;
}
```

And for one line at a time:

```perl
foreach my $line (<>)
{
  print $line;
}
```

## Resources

- [Snippets by aktago](https://snippets.aktagon.com/snippets/25-how-to-pipe-input-to-a-perl-script)
