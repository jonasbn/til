# Perl Language Server Extension

**VScode** is a magnificent tool. Since I maintain a few Perl distributions, I am always interested in having good Perl support in my tooling, which is often not the case, since Perl is often treated as dead language.

Anyway there is a Perl Language Server Extension for VScode, which is a great tool to use.

Do note there are actually two implementations:

- [VScode MarketPlace: Perl][MARKETPERL]
- [VScode Perl Language Server (PLS)][MARKETPLS]

I have used both and they can be installed in parallel. I have not experienced any conflicts. However you might need to double down on configuration, I believe the challenges of include paths and general configuration is somewhat similar for both - from my point of view I was looking at activity, but it might come down to best debugger integration.

Now let's continue with PLS.

These are my notes on how I have set it up.

I have installed the Perl Language Server Extension from the VScode marketplace as you would do for all extensions.

As for the required Perl parts (dependencies/distributions), I have installed these in my primary Perl installation, which is the one I use for development.

This one runs using the `perlbrew` tool, which is a great tool to manage multiple Perl installations and I do not have to worry about messing up my system Perl installation.

```bash
perlbrew use
Currently using perl-5.40.0
```

I have installed the required Perl distributions using `cpanm`:

```bash
cpanm PLS
```

The challenge is that if you have many separate repositories with Perl code, you need some way to separate these, since configuring the global configuration might obscure things.

For all repositories I create a workspace in VScode, which is a great way to separate things. Then I can specify include paths (`@INC`) for each workspace.

Example from the [perl-crypt-openssl-pkcs12 repository](https://github.com/dsully/perl-crypt-openssl-pkcs12), which has the main `*.pm` file in the root of the repository:

```json
{
    "folders": [
        {
            "path": "."
        }
    ],
    "settings": {
        "pls.inc": [
            "/Users/jonasbn/develop/github-collabs/perl-crypt-openssl-pkcs12"
        ],
        "pls.syntax.perl": "/Users/jonasbn/perl5/perlbrew/perls/perl-5.40.0/bin/perl"
    }
}
```

And for a repository with a `lib` directory ([perl-workflow](https://github.com/perl-workflow/perl-workflow)):

```json
{
    "folders": [
        {
            "path": "."
        }
    ],
    "settings": {
        "pls.inc": [
            "/Users/jonasbn/develop/github-jonasbn/perl-workflow/lib",
        ],
        "pls.syntax.perl": "/Users/jonasbn/perl5/perlbrew/perls/perl-5.40.0/bin/perl"
    }
}
```

And since I am using `perlbrew` I have to specify the path to the Perl executable, which is not the system Perl.

```json
    "pls.syntax.perl": "/Users/jonasbn/perl5/perlbrew/perls/perl-5.40.0/bin/perl"
```

There are possibly smart ways to work with this and I am still exploring the possibilities. The reason for ending here was that it does not seem possible to use the **VScode** variables in the configuration, which would have been a great way to specify the path to the varies libraries along the lines of this:

```
"pls.inc": [
    "${workspaceFolder}/lib"
]
```

## Resources and References

- [VScode Perl Language Server (PLS)][MARKETPLS]
- [MetaCPAN: PLS](https://metacpan.org/pod/PLS)
- [GitHub: FractalBoy/perl-language-server (PLS)](https://github.com/FractalBoy/perl-language-server)
- [VScode MarketPlace: Perl][MARKETPERL]
- [MetaCPAN: Perl::LanguageServer](https://metacpan.org/pod/Perl::LanguageServer)
- [GitHub: richterger](https://github.com/richterger/Perl-LanguageServer)

[MARKETPERL]: https://marketplace.visualstudio.com/items?itemName=richterger.perl-language-server
[MARKETPLS]: https://marketplace.visualstudio.com/items?itemName=FractalBoy.pls
