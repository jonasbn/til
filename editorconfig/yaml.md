# EditorConfig for YAML

I am using the basic **EditorConfig** configuration for **YAML** files.

```INI
[*.{yml,yaml}]
indent_style = space
indent_size = 2
insert_final_newline = true
```

- `insert_final_newline`

> Non-empty YAML files should end with a newline🔗
> There are some edge cases where different YAML parsers will disagree on the meaning of a YAML file when it doesn't end with a newline.
>
> It's best to end your YAML files with a newline. Most editors can be configured to add a newline at the end of the file.
>
> Do it.

## References

- [EditorConfig.org](https://editorconfig.org/)
- ["YAML Best Practices" by Ingy döt Net](https://yamlscript.org/blog/2025-07-20/yaml-best-practices/)
