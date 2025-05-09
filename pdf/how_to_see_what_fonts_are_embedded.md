# How to see what fonts are embedded

You can inspect fonts embedded in a PDF using `strings`

Like so:

```shell
strings /path/to/document.pdf | grep -i FontName
```

Alternativly there are also:

- `poppler`
- `xpdf`

Which provides: `pdffonts`

## Resources and References

- [SuperUser: "View list of embedded fonts in PDF file with Preview"](https://superuser.com/questions/183313/view-list-of-embedded-fonts-in-pdf-file-with-preview)
