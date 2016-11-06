# Add colour to grep

It can be quite useful to add colour to your output from `grep`, since it helps is identifying matches and hence makes sure you do not overlook something.

Basic example:

```bash
$ grep --color <pattern> <file>
```

Default colour is red, but can be changes using the environment variable `GREP_COLOR`:

An example:

```bash
$ GREP_COLOR='1;36' grep --color <pattern> <file>
```

I have only used two parameters in the above example, You can in addition set the background colour, please see the listed source for more details.

Source: http://www.unixcl.com/2009/03/highlight-match-with-color-in-grep.html
