# String Interpolation

I ran into some issues with string interpolation in Zsh, something basic, luckily the solution is basic.

Output a string:

```shell
FOOD="apples" && echo "I eat ${FOOD}"
I eat apples
```

Output a command:

```shell
FOOD="apples" && echo "I eat ${FOOD} on $(date)"
I eat apples on Tue Nov 11 19:54:11 CET 2025
```

Examples lifted from the references resource and modified for my own pleasure.

## Resources and References

- [Medium: Bash/Zsh String Interpolation: Round or Curly Brackets?](https://medium.com/@rossmichaelm/bash-zsh-string-interpolation-round-or-curly-brackets-dfeca5301ce4)
