# Enriched Test Output

I have earlier used the colorful test tool for **go** `gotest` (see: [Colorful Test Output](http://jonasbn.github.io/til/go/colorful_test_output.html)).

Recently I fell over: `richgo` which is way more flexible... and complex.

It lets you:

- specify colors for test outcomes
- style of output when building
- style of outputs for test outcomes
- and probably some stuff I have not yet gotten my hands on

You can specify it globally or per project using a configuration file

I can recommend copying in the example with the defaults explicitly defined and then starting to customise from there

```yaml
labelType: long
buildStyle:
  bold: true
  foreground: yellow
startStyle:
  foreground: lightBlack
passStyle:
  foreground: green
failStyle:
  bold: true
  foreground: red
skipStyle:
  foreground: lightBlack
passPackageStyle:
  foreground: green
  hide: true
failPackageStyle:
  bold: true
  foreground: red
  hide: true
coverThreshold: 50
coveredStyle:
  foreground: green
uncoveredStyle:
  bold: true
  foreground: yellow
fileStyle:
  foreground: cyan
lineStyle:
  foreground: magenta
```

## Resources and References

- [GitHub repository for richgo][GITHUB]

[GITHUB]: https://github.com/kyoh86/richgo?utm_source=pocket_reader
