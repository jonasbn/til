# EditorConfig for XML

I am using the basic **EditorConfig** configuration for **XML** files.

```INI
[*.{xml,xsd}]
max_line_length = off
end_of_line = lf
indent_style = space
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true
indent_size = 2
```

Since **XML** is so expressive I try to keep it tight with a indentation of only 2. At the same time I have disabled the maximum line length since **XML** in all it's expresiveness takes up a lot of room, so long lines and short indentation for readability.

## References

- [EditorConfig.org](https://editorconfig.org/)
