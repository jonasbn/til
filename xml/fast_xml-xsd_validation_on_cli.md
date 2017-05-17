# Fast XML/XSD validation on the command line

Sometime you need to validate some XML fast.

`xmllint` is your friend :-)

```bash
$ xmllint --noout --schema my.xsd my.xml
```

`--noout` show just the errors, if you want your XML outputted, do not use `--noout`

Source: [xmllint](http://xmlsoft.org/xmllint.html) a part of LibXML.

Source: [Blog](http://www.silverink.nl/validating-xml-xsd-mac/)

