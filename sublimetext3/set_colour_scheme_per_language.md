# Set colour scheme per language

We all have our favorite colour schemes for editors, terminals etc. sometimes you want some variation to be able to switch context or for easy recognition.

This is how you set different colour schemes for different languages:

1. Open a file of the language type you want to customize
2. Go to Menu: Sublime Text -> Preferences -> Settings - More -> Syntax Specific User
3. Paste the below snippet
4. Set the package to your liking

```json
{
    "color_scheme": "Packages/Color Scheme - Default/Cobalt.tmTheme"
}
```

Colour schemes are located in different places, the one given in the examples was located in:

`~/Library/Application Support/Sublime Text 3/Cache/Color\ Scheme\ -\ Default/`

## References

- [Inspiration](https://www.granneman.com/webdev/editors/sublime-text/configuring-sublime-text/)
