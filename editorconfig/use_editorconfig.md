# Use EditorConfig

**EditorConfig** is a magnificent tool.

It lets you control aspect of file types such as:

- Encoding (`charset`)
- Line endings (`end_of_line`) and (`trim_trailing_whitespace`)
- Line length (`max_line_length`)
- File ending (`insert_final_newline`)
- Indentation style (`indent_style`)
- Indentation size (`indent_size`)

 :point_right: Do note that all implementations might not support [all properties][properties].

The properties can be specified for file types:

All files:

```yaml
[*]
# properties
```

Or file patterns:

```yaml
[*.{js,py}]
# properties
```

And finally:

You can use it globally on a project basis, by specifying if you file is the root in your project by adding the file: `.editorconfig` to your project directory.

```yaml
# top-most EditorConfig file
root = true
```

And you can then add the global definition (`.editorconfig`) to your `$HOME` directory.

It integrates with most editors like **Visual Studio Code**, **Sublime Text**, **Atom** or **Vim**, check the list on the [EditorConfig site][editorconfig].

Do note that the rule of thumb is not to change everything, but just the new adjustments, when you change or add a property, because this could cause misleading file _diffs_ and hence commits.

If you want to change everything according to your **EditorConfig** property settings, check out `eclint` (Editor Config Linter), see [my TIL on eclint](enforce_editorconfig_config_using_eclint.md). Do note `eclint` is no longer actively maintained so alternatives like `ec` (**editorconfig-checker**).

You can also enable use of **EditorConfig** for GitHub Actions, see [my TIL on EditorConfig GitHub Action](../github_actions/use_editorconfig.md)

## References

- [EditorConfig.org][editorconfig]
- [EditorConfig Properties][properties]
- [eclint GitHub repository](https://github.com/jedmao/eclint)
- [editorconfig-checker](https://github.com/editorconfig-checker/editorconfig-checker)
- [editorconfig-checker](https://hub.docker.com/r/mstruebing/editorconfig-checker) Docker edition

[editorconfig]: https://editorconfig.org/
[properties]: https://github.com/editorconfig/editorconfig/wiki/EditorConfig-Properties
