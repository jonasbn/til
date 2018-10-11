# EditorConfig for Perl

I have created this basic **EditorConfig** configuration for **Perl**.

```INI
[*.{pl,pm,t,PL}]
max_line_length = off
end_of_line = lf
indent_style = space
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true
indent_size = 4
```

I also created a snippet for use with the **SublimeText** **EditorConfig**
[snippet package][EditorConfigSnippets].

It supports the following suffixes: `pl` (scripts), `pm` (modules), `t` (test
files) and `PL` (build files). I was considering `epl`, which is used for
template files ([Mojo::Template][Mojo::Template]) for the the Mojolicious web
framework, but I decided to leave those out for now.

`max_line_length` is set to `off`, `80` could be set since this balances with
the default from [`perltidy`][perltidy] a **Perl** source code formatter.

I have listed a single `charset`: `utf-8` since I have not observed much use for
the others mentioned in other examples, perhaps `latin-1`, should be present.

And finally I have set the `indent_size` to `4`. `4` being the one recommended
in  [the Perl style guide][perlstyle]. You could go with `2` being the setting
preferred by a lot of **Perl** programmers and I think is defined as the default
setting for the Mojolicious web framework syntax plugin for **SublimeText**.

## References

- [EditorConfig](http://editorconfig.org/)
- [SublimeText EditorConfig plugin](https://github.com/sindresorhus/editorconfig-sublime)
- [SublimeText EditorConfig snippets](https://github.com/mfuentesg/EditorConfigSnippets)

[perltidy]: http://perltidy.sourceforge.net/stylekey.html#line_length_setting

[Mojo::Template]: https://metacpan.org/pod/Mojo::Template

[EditorConfigSnippets]: (https://github.com/mfuentesg/EditorConfigSnippets

[perlstyle]: https://perldoc.perl.org/perlstyle.html
