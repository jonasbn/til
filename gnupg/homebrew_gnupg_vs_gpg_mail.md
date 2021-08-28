# Homebrew GnuPG vs. GPG Mail

I have paid for and installed GPG Suite integration with Apples Mail application.

Homebrew offers `gnupg`, so I have observed that the two tools _clash_ on some of the command line tools such as:

- `gpg`
- `gpg-agent`

As both tools install into `/usr/local/bin`

Homebrew provides information and a remedy when the conflict occurs

```bash
$ brew link --overwrite --dry-run gnupg
Would remove:
/usr/local/bin/gpg -> /usr/local/MacGPG2/bin/gpg2
/usr/local/bin/gpg-agent -> /usr/local/MacGPG2/bin/gpg-agent
```

So the remedy is:

```bash
$ brew link --overwrite gnupg
Linking /usr/local/Cellar/gnupg/2.3.2... 73 symlinks created.
```

I am unsure of this causes any additional trouble, but I have not experienced any just yet and I have not tried out the installation/upgrade in the opposite order.

## Resources and References

1. [GPG Suite website](https://gpgtools.org/)
1. [Homebrew gnupg](https://formulae.brew.sh/formula/gnupg#default)
