# Prettify XML on the CLI

I am doing some XSL processing the command line using: `xsltproc`.

The output is not always easily digestable, so I started to pipe it to `xml_pp` which is XML Pretty Printer implemented in Perl available via the [XML::Twig distribution][META]

```shell
xsltproc transformer.xsl source.xml|xml_pp
```

It is nice with the XML prettified, but you can even get it colourized using `bat`.

```shell
xsltproc transformer.xsl source.xml|xml_pp|bat
```

## Resources and References

- [MetaCPAN: xml_pp][META]
- [xsltproc](http://xmlsoft.org/xslt/xsltproc.html)
- [GitHub: bat](https://github.com/sharkdp/bat)

[META]: https://metacpan.org/dist/XML-Twig/view/tools/xml_pp/xml_pp
