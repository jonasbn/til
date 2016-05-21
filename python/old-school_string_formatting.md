# Old-school string formatting

I was reading through some **Python** code and I fell over this contruct:

```python
            pattern_hash = "^#{1," + str(attrs['depth']) + "}[^#]"
        headings = self.view.find_all(
            "%s|%s" % (pattern_h1_h2_equal_dash, pattern_hash))
```

The use of the `%` in the method call confused me, is something that looked like a string concatenation.

The above example is taken from [the MarkdownTOC SublimeText plugin](https://github.com/naokazuterada/MarkdownTOC).

Apparently this is old-school string formatting and it is deprecated in **Python 3.1**.

The example from this page, makes it more understandable:

```python
x = 'apple'
y = 'lemon'
z = "The items in the basket are %s and %s" % (x,y)
```

[Source: Python for Beginners](http://www.pythonforbeginners.com/concatenation/string-concatenation-and-formatting-in-python)

